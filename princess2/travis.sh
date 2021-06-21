#!/bin/bash
set -e

mkdir -p bin build
python3.9 -m princess --codecov -c main.pr -o bin/

./bin/main --test
mv main.gcda build/
mv main.gcno build/
gcov build/main.c

./bin/main --buildfolder=bin --outfile=bin/test test/test.pr
./bin/test