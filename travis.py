#!/usr/bin/python3.9
from pathlib import Path
import subprocess
import build
import os


def main():
    Path("build").mkdir(exist_ok = True)
    Path("bin").mkdir(exist_ok = True)
    build.download()
    print("Building the compiler...")
    build.build([])
    print("Building test suite...")
    build.testrunner([])
    print("Running test suite")
    
    os.environ["PRINCESS_COMPILER"] = build.exe_file("bin/princess2")
    subprocess.check_call(["bin/testrunner", "./test"])

if __name__ == "__main__":
    main()