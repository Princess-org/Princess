#!/bin/bash
set -e

VERSION="0.0.1"
SOURCE_URL="https://github.com/Princess-org/Princess/releases/download/v${VERSION}-alpha/princess-${VERSION}.tar.gz"

echo "Downloading Princess compiler from github..."
mkdir -p bin build
wget -O bin/princess-dl.tar.gz $SOURCE_URL
mkdir bin/princess-dl && tar xf bin/princess-dl.tar.gz -C bin/princess-dl --strip-components 1
mv bin/princess-dl/bin/princess bin/princess
rm -r bin/princess-dl
rm bin/princess-dl.tar.gz

echo "Building the compiler..."
./bin/princess -d --include=src --buildfolder=build --outfile=bin/princess2 src/main.pr
echo "Running test suite..."
./bin/princess2 --test
echo "Compiling secondary test..."
./bin/princess2 -d --include=src --buildfolder=build --outfile=bin/test src/test/test.pr
./bin/test