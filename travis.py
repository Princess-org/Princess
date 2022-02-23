#!/usr/bin/python3.9
from pathlib import Path
import sys
import subprocess
from include import gencstd
import build


def main():
    Path("build").mkdir(exist_ok = True)
    Path("bin").mkdir(exist_ok = True)
    build.download()
    print("Generating standard library...")
    gencstd.main()
    print("Building the compiler...")
    build.build([])

    if sys.platform != "win32":
        print("Building test suite...")
        build.testsuite([])
        print("Running test suite")
        subprocess.check_call(["bin/testsuite"])

if __name__ == "__main__":
    main()