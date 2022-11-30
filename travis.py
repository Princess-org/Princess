#!/usr/bin/python3.9
from pathlib import Path
import subprocess
import build
import os
import sys

def compile(extra):
    args = [build.exe_file("bin/princess2"), "--no-incremental", "-d", "-Isrc", "--buildfolder=build", "--outfile", build.exe_file("bin/princess3"), "src/main.pr"]
    if sys.platform == "win32":
        args += build.WIN_ARGS
    subprocess.check_call(args + extra)

def main():
    Path("build").mkdir(exist_ok = True)
    Path("bin").mkdir(exist_ok = True)
    build.download()
    print("Building the compiler...")
    build.build([])
    print("Building test suite...")
    build.testrunner([])
    print("Running test suite")
    
    # TODO also test on windows
    if sys.platform != "win32":
        os.environ["PRINCESS_COMPILER"] = build.exe_file("bin/princess2")
        subprocess.check_call(["bin/testrunner", "./test"])

    print("Bootstrapping...")
    compile([])

if __name__ == "__main__":
    main()