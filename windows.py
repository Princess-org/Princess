import json
from re import sub
import subprocess
import re

with open("build/out.ll", "r+") as fp:
    source = fp.read()
    source = re.sub(r'directory: "/mnt/c/', 'directory: "C:\\\\', source)
    source = source.replace('!{i32 7, !"Dwarf Version", i32 4}', '!{i32 2, !"CodeView", i32 1}')
    fp.seek(0)
    fp.write(source)
    fp.truncate()


subprocess.call([
    "clang", "-O0", "-v", "-g", "-gcodeview", "build/out.ll", 
    "--library-directory", r"C:\Users\Vic\Programming\vcpkg\installed\x64-windows\lib\\", 
    "-lUser32", "-lKernel32", "-llibffi", "-Xlinker", 
    "/FORCE:UNRESOLVED", "-Xlinker", "/STACK:67108864", "-o", "bin/princess.exe"])