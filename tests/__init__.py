import tatsu, princess, io, contextlib, logging, os, functools, inspect, sys, re

from princess import ast_repr, grammar
from princess.ast import node
from unittest import skip, skipIf, skipUnless, expectedFailure
from tatsu.exceptions import FailedParse
from princess.grammar import CompareOp, AssignOp

# command line options
config = None

def _traceback(src, **kwargs):
    if config.getoption("colorize") and not "colorize" in kwargs:
        kwargs["colorize"] = True
    if config.getoption("tatsu_trace") and not ("trace" in kwargs and kwargs["trace"]):
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

#class FailedParse(Exception):
#    def __init__(self, src, exception, trace = False, **kwargs):
#        self.trace = _traceback(src, **kwargs)
#        self.exception = exception
#
#    def __str__(self):
#        res = str(self.exception) if self.exception else ""
#        if self.trace: 
#            res += "\n\nParser Trace: \n" + self.trace
#        return res

def parse(text, **kwargs):
    if config.getoption("colorize") and not "colorize" in kwargs:
        kwargs["colorize"] = True
        
    try:
        parsed = princess.parse(text, **kwargs)
        parsed._src = text
    except FailedParse as e:
        _traceback(text)
        raise e from None   # Make sure to delete the traceback, we only care about the exception

    return parsed

def _dump_traceback(arg):
    if not isinstance(arg, princess.ast.Node): return
    if not hasattr(arg, "_src"): return
    
    traceback = _traceback(arg._src)

    # TODO Since pytest captures tatsu's log...
    # print("Traceback:\n", file=sys.stderr)
    # print(traceback, file=sys.stderr)

def assertFailedParse(code, regex = None): 
    __tracebackhide__ = True # pylint: disable=W0612

    parsed = None
    try:
        parsed = parse(code)
        _dump_traceback(parsed)
        raise AssertionError("No ParseException raised.\nResult = " + str(parsed))
    except FailedParse as ex:
        if regex and not re.search(regex, str(ex)):
            _traceback(code)
            raise AssertionError("Exception message didn't match " + repr(regex) + ".\nWas:\n\n" + str(ex)) from None

# Convenience functions for testing

def prog(n): 
    return node.Program([n])

def ast(src): 
    return parse(src).children_list()[0]

Integer = node.Integer
Float = node.Float
String = node.String
Boolean = node.Boolean
Char = node.Char

EmptyBody = node.Body([None])
Continue = node.Continue()
Break = node.Break()
Null = node.Null()

def Body(*args):
    return node.Body([None] + list(args))

def Identifier(*args):
    return node.Identifier(list(args))

def Do(*args):
    return node.Do(Body(*args))

def Var(*args, **kwargs):
    return node.VarDecl(keyword = 'var', *args, **kwargs)
def Let(*args, **kwargs):
    return node.VarDecl(keyword = 'let', *args, **kwargs)
def Const(*args, **kwargs):
    return node.VarDecl(keyword = 'const', *args, **kwargs)

def Pointer(type = None):
    return node.PtrT(keyword = 'var', type = type)
def Reference(type = None):
    return node.PtrT(keyword = 'let', type = type)

def ArrayT(type = None, n = None, keyword = 'var'):
    return node.ArrayT(n = n, keyword = keyword, type = type)