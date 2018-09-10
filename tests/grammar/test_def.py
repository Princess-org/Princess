from tests import *

@skip("Tatsu bug")
def test_simple():
    assert parse("""
        def function
    """)
    assert parse("""
        def function = 0
    """)
    assert parse("""
        def function -> int
    """)

@skip("Tatsu bug")
def test_args():
    assert parse("""
        def function(a: int, b: SomeType)
    """)
    assert parse("""
        def function(a: int) -> T
    """)

@skip("Tatsu bug")
def test_export():
    assert parse("""
        export def function {
            let foobar = 20 + 40
            return foobar
        }
    """)