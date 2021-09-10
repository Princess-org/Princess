#!/bin/bash
set -e

source version.sh

echo "Downloading Princess compiler from Github..."
mkdir -p bin build
wget -O bin/princess-dl.tar.gz $SOURCE_URL
mkdir bin/princess-dl && tar xf bin/princess-dl.tar.gz -C bin/princess-dl --strip-components 1
mv bin/princess-dl/bin/princess bin/princess
rm -r bin/princess-dl
rm bin/princess-dl.tar.gz

echo "Building standard library..."
python3.9 include/gencstd.py
echo "Building the compiler..."
./bin/princess -d --include=src --buildfolder=build --outfile=bin/princess2 src/main.pr
echo "Building test suite..."
./bin/princess2 -d --include=src --buildfolder=build --outfile=bin/testsuite src/tests.pr
echo "Running test suite..."
./bin/testsuite
echo "Compiling secondary test..."
./bin/princess2 -d --include=src --buildfolder=build --outfile=bin/test src/test/test.pr
./bin/test