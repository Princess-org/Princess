import unittest, tatsu, princess, io, contextlib, logging, os, functools, inspect

from princess import ast_repr, grammar
from princess.ast import node
from unittest import skip, skipIf, skipUnless, expectedFailure

def expr(n): return node.Program([node.Expression(n)])

class opt:
    TRACEBACK = True
    COLORIZE = False

def _traceback(src, **kwargs):
    if opt.COLORIZE and not "colorize" in kwargs:
        kwargs["colorize"] = True
    if opt.TRACEBACK and not ("trace" in kwargs and kwargs["trace"]):
        with io.StringIO() as buf:
            handlers = tatsu.util.logger.handlers
            tatsu.util.logger.handlers = [logging.StreamHandler(buf)]
            try:
                princess.parse(src, trace = True, **kwargs)
            except tatsu.exceptions.FailedParse: pass
            finally:
                tatsu.util.logger.handlers = handlers

            return buf.getvalue()
    return None

class FailedParse(Exception):
    def __init__(self, src, exception, trace = False, **kwargs):
        self.trace = _traceback(src, **kwargs)
        self.exception = exception

    def __str__(self):
        res = str(self.exception) if self.exception else ""
        if self.trace: 
            res += "\n\nParser Trace: \n" + self.trace
        return res

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
        

def _generate_traceback(arg):
    if not isinstance(arg, princess.ast.Node): return None
    if not hasattr(arg, "_src"): return None 
    return _traceback(arg._src)

def _append_traceback(e, first, second, result, prepend = None): # Result passed for overloading separator
    if not opt.TRACEBACK: raise e
    if first == None and second == None: raise e

    first = _generate_traceback(first)
    second = _generate_traceback(second)

    sep = "\n" + result.separator2 + "\n"
    ret = prepend if prepend is not None else "\n\n"
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
        e = None
        try: return super().assertEqual(first, second, msg)
        except AssertionError as ex: e = ex
        if e: _append_traceback(e, first, second, self._outcome.result)

    def assertNotEqual(self, first, second, msg = None):
        e = None
        try: return super().assertNotEqual(first, second, msg)
        except AssertionError as ex: e = ex
        if e: _append_traceback(e, first, second, self._outcome.result)

    def assertFailedParse(self, code, regex = None): 
        e = None
        parsed = None
        try: 
            if regex:
                with self.assertRaisesRegex(tatsu.exceptions.FailedParse, regex): parsed = princess.parse(code)
            else: 
                with self.assertRaises(tatsu.exceptions.FailedParse): parsed = princess.parse(code)
        except AssertionError as ex: e = ex
        if e:
            if parsed is None: parsed = princess.ast.Node()
            else: prepend = "\n\nResult: " + ast_repr(parsed) + "\n\n"
            parsed._src = code
            _append_traceback(e, parsed, None, self._outcome.result, prepend = prepend)

    assertEquals = assertEqual
    assertNotEquals = assertNotEqual