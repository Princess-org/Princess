import unittest, tatsu, princess, io, contextlib, logging, os, functools, inspect

from princess import ast_repr, grammar
from princess.ast import node
from unittest import skip, skipIf, skipUnless, expectedFailure

def expr(n): return node.Program([node.Expression(n)])

class opt:
    TRACEBACK = True
    COLORIZE = False

class FailedParse(Exception):
    def __init__(self, text, exception, trace = False, **kwargs):
        self.trace = None
        self.exception = exception
        if opt.TRACEBACK and not trace:
            with io.StringIO() as buf:
                handlers = tatsu.util.logger.handlers
                tatsu.util.logger.handlers = [logging.StreamHandler(buf)]
                try:
                    princess.parse(text, trace = True, **kwargs)
                except tatsu.exceptions.FailedParse: pass
                finally:
                    tatsu.util.logger.handlers = handlers

                self.trace = buf.getvalue()

    def __str__(self):
        res = str(self.exception) if self.exception else ""
        if self.trace: 
            res += "\n\nParser Trace: \n" + self.trace
        return res

class _ParseContext(object):
    def __init__(self, test_case, input, kwargs):
        self.test_case = test_case
        self.input = input
        self.kwargs = kwargs
        self.exception = None

    def __enter__(self):
        return princess.parse(self.input, **self.kwargs)

    def __exit__(self, exc_type, exc_value, tb):
        raise exc_value


def parse(text, **kwargs):
    if opt.COLORIZE and not "colorize" in kwargs:
        kwargs["colorize"] = True
        
    raised = None
    try: 
        parsed = princess.parse(text, **kwargs)
        parsed._src = text
        return parsed
    except tatsu.exceptions.FailedParse as e:
        raised = e # Destroy trace back, its not important here

    if raised: raise FailedParse(text, raised, **kwargs)

def __generate_traceback(arg):
    if not isinstance(arg, princess.ast.Node): return None
    if not hasattr(arg, "_src"): return None 
    return FailedParse(arg._src, exception = None).trace

def __append_traceback(e, first, second, result): # Result passed for overloading separator
    if not opt.TRACEBACK: raise e

    first = __generate_traceback(first)
    second = __generate_traceback(second)

    sep = "\n" + result.separator2 + "\n"

    if first == None and second == None: raise e
    ret = "\n\n"
        
    if first == None: 
        first = second
        second = None
    if second == None:
        ret += "Parser Trace:" + sep
    else:
        ret += "Parser Trace 1:" + sep
    ret += first
    if second != None:
        ret += sep + "Parser Trace 2:" + sep + second

    raise AssertionError(str(e) + ret)

def _traceback(fun):
    def _assert(self, first, second, msg = None ):
        try: return fun(self, first, second, msg)
        except AssertionError as e: 
            raise __append_traceback(e, first, second, self._outcome.result)
    return _assert

class TestCase(unittest.TestCase):
    @_traceback
    def assertEqual(self, first, second, msg = None):
        return super().assertEqual(first, second, msg)

    @_traceback
    def assertNotEqual(self, first, second, msg = None):
        return super().assertNotEqual(first, second, msg)

    assertEquals = assertEqual
    assertNotEquals = assertNotEqual