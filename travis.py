#!/usr/bin/python3.9
import json
import requests
from pathlib import Path
import subprocess
import build
import os
import sys

def compile(extra):
    args = [build.exe_file("bin/princess2"), "--no-incremental", "-d", "-Isrc", "--buildfolder=build", "--outfile", build.exe_file("bin/princess3"), "src/main.pr"]
    args += build.ARGS
    subprocess.check_call(args + extra)

def main():
    Path("build").mkdir(exist_ok = True)
    Path("bin").mkdir(exist_ok = True)

    print("Downloading Princess compiler from Github...")
    releases = json.loads(requests.get(build.RELEASES_URL).text)
    assets = releases[0]["assets"]
    for asset in assets:
        if asset["name"] == "princess":
            url = asset["browser_download_url"]
            break

    with open("bin/princess", "wb") as fp:
        fp.write(requests.get(url).content)

    
    print("Building the compiler...")
    build.build([])
    print("Building test suite...")
    build.testrunner([])
    print("Running test suite")
    
    # TODO also test on windows
    if sys.platform != "win32":
        os.environ["PRINCESS_COMPILER"] = build.exe_file("bin/princess2")
        subprocess.check_call(["bin/testrunner", "./test", "--compiler", "./bin/princess2"])

    print("Bootstrapping...")
    compile([])

if __name__ == "__main__":
    main()
