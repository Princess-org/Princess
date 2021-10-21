#!/bin/bash
set -e

source scripts.sh

mkdir -p build bin
download
genstdlib
echo "Building the compiler..."
./bin/princess -d --include=src --buildfolder=build --outfile=bin/princess2 src/main.pr
echo "Building test suite..."
./bin/princess2 -d --include=src --buildfolder=build --outfile=bin/testsuite src/test/main.pr
echo "Running test suite..."
./bin/testsuite