import unittest, tatsu, princess, io, contextlib, logging, os

from princess import ast_repr, grammar
from princess.ast import node

def expr(n): return node.Program([node.Expression(n)])

class opt:
    TRACEBACK = True

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
    raised = None
    try: 
        parsed = princess.parse(text, **kwargs)
        parsed._src = text
        return parsed
    except tatsu.exceptions.FailedParse as e:
        raised = e # Destroy trace back, its not important here

    if raised: raise FailedParse(text, raised, **kwargs)

def _generate_traceback(arg):
    if not isinstance(arg, princess.ast.Node): return None
    if not hasattr(arg, "_src"): return None 
    return FailedParse(arg._src, exception = None).trace

sep = "\n" + unittest.TextTestResult.separator2 + "\n"
def _append_traceback(e, first, second):
    if not opt.TRACEBACK: raise e

    first = _generate_traceback(first)
    second = _generate_traceback(second)

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

class TestCase(unittest.TestCase):

    def assertEqual(self, first, second, msg = None):
        raised = None
        try: return super().assertEqual(first, second, msg)
        except AssertionError as e: raised = e
        if raised: _append_traceback(raised, first, second)

    def assertNotEqual(self, first, second, msg = None):
        raised = None
        try: return super().assertNotEqual(first, second, msg)
        except AssertionError as e: raised = e
        if raised: _append_traceback(raised, first, second)