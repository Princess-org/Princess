#!/bin/bash
set -e

mkdir -p bin
python3.9 -m princess --codecov -c main.pr -o bin/

clang --version

./bin/main --test
mv main.gcda bin/
mv main.gcno bin/
gcov bin/main.c