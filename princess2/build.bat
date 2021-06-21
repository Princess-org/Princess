if not exist "bin" mkdir bin
if not exist "build" mkdir build
py -3.9 -m princess -c main.pr --buildfolder=build/ -o bin/main