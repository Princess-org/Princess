import pytest

@pytest.fixture(scope="session", autouse=True)
def precompile_parser():
    print("This is a test...")
