#!/usr/bin/python3.9

import json
from os import system
import os
from pathlib import Path
import subprocess
import sys
import shutil
import glob
from urllib import request
import requests

from include import gencstd

with open("version") as fp:
    VERSION = fp.read().split("VERSION=")[1]

RELEASES_URL = f"https://api.github.com/repos/Princess-Org/Princess/releases"

WIN_ARGS = ["-llibffi", "--link-flag", "/FORCE:UNRESOLVED", "--link-flag", "/STACK:67108864", "--clang=-gcodeview"]
if sys.platform == "win32":
    WIN_ARGS += ["--link-directory", os.environ["LIBRARY_PATH"]]

def exe_file(file: str) -> str:
    if sys.platform == "win32":
        return file + ".exe"
    return file

def release():
    FOLDER=Path(f"princess-{VERSION}")
    
    print("First compilation step")
    build([])

    print("Second compilation step")
    subprocess.check_call([exe_file("bin/princess2"), "-d", "-Isrc", "--buildfolder=build", "--outfile", exe_file("bin/princess3"), "src/main.pr"])
    
    print("Creating archive")
    FOLDER.mkdir(exist_ok=True)
    (FOLDER / "bin").mkdir(exist_ok=True)
    (FOLDER / "include").mkdir(exist_ok=True)

    shutil.copy(Path(exe_file("bin/princess2")), FOLDER / exe_file("bin/princess"))
    shutil.copy(Path("version"), FOLDER)

    for path in glob.glob("include/*.h"):
        shutil.copy(path, FOLDER / "include")

    if sys.platform == "win32":
        shutil.copy(Path("bin/libffi.dll"), FOLDER / "bin")
        shutil.copy(Path("bin/libffi.lib"), FOLDER / "bin")

        (FOLDER / "include/windows").mkdir(exist_ok=True)
        for path in glob.glob("include/windows/*.pr")
            shutil.copy(path, FOLDER / "include/windows")

        shutil.copy(Path("include/windows/ffi.h"), FOLDER / "include/windows")
        shutil.copy(Path("include/windows/ffitarget.h"), FOLDER / "include/windows")
    else:
        (FOLDER / "include/linux").mkdir(exist_ok=True)
        for path in glob.glob("include/linux/*.pr")
            shutil.copy(path, FOLDER / "include/linux")

    shutil.copy(Path("include/preload.pr"), FOLDER / "include")
    shutil.copy(Path("include/symbol.pr"), FOLDER / "include")
    shutil.copy(Path("include/gencstd.py"), FOLDER / "include")
    shutil.copy(Path("include/cstd.c"), FOLDER / "include")
    shutil.copytree(Path("std"), FOLDER / "std")

    if sys.platform == "win32":
        shutil.make_archive(f"princess-win32-{VERSION}", "zip", FOLDER)
    else:
        shutil.make_archive(f"princess-{VERSION}", "gztar", FOLDER)

    shutil.rmtree(FOLDER)

def testsuite(extra):
    if not Path(exe_file("bin/princess2")).exists():
        build([])
    args = [exe_file("bin/princess2"), "-d", "-Isrc", "--buildfolder=build", "--outfile", exe_file("bin/testsuite"), "src/test/main.pr"]
    if sys.platform == "win32":
        args += WIN_ARGS
    subprocess.check_call(args + extra)

def clean():
    shutil.rmtree(Path("build"))
    for path in glob.glob("princess*.tar.gz") + glob.glob("princess*.zip"):
        Path(path).unlink()

def download():
    print("Downloading Princess compiler from Github...")

    latest_version = json.loads(requests.get(RELEASES_URL).text)[0]
    for asset in latest_version["assets"]:
        if sys.platform == "win32":
            if asset["name"].endswith(".zip"): break
        else:
            if asset["name"].endswith(".tar.gz"): break
    
    archive = "princess.zip" if sys.platform == "win32" else "princess.tar.gz"
    with open(archive, "wb") as fp:
        fp.write(requests.get(asset["browser_download_url"]).content)

    shutil.unpack_archive(archive, "princess")
    if sys.platform == "win32":
        shutil.copy(Path("princess") / os.listdir(Path("princess"))[0] / "bin/princess.exe", "bin")
    else:
        shutil.copy(Path("princess") / "bin/princess", "bin")
    
    shutil.rmtree(Path("princess"))
    Path(archive).unlink()

def build(extra):
    args = [exe_file("bin/princess"), "-d", "-Isrc", "--buildfolder=build", "--outfile", exe_file("bin/princess2"), "src/main.pr"]
    if sys.platform == "win32":
        args += WIN_ARGS
    subprocess.check_call(args + extra)

def main():
    Path("bin/").mkdir(exist_ok = True)
    Path("build/").mkdir(exist_ok = True)
    downloaded = False
    if not Path(exe_file("bin/princess")).exists():
        download()
        gencstd.main()
        downloaded = True

    args = sys.argv
    if len(args) == 1:
        build(args[1:])
    elif args[1] == "release":
        release()
    elif args[1] == "test":
        testsuite(args[2:])
    elif args[1] == "clean":
        clean()
    elif args[1] == "download":
        if not downloaded:
            download()
    else:
        build(args[1:])

if __name__ == "__main__":
    main()