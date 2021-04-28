#!/bin/bash
mkdir -p bin
python3.9 -m princess --coverage -c main.pr -o bin/

./bin/main --test
mv main.gcda bin/
mv main.gcno bin/
gcov bin/main.c