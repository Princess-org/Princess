import tatsu, princess, io, logging, re, pytest

skip = pytest.mark.skip
skipif = pytest.mark.skipif

from tatsu.exceptions import FailedParse

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
            except FailedParse: pass
            finally:
                tatsu.util.logger.handlers = handlers

            return buf.getvalue()
    return None

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

def ast(src):
    return parse(src).children_list()[0]