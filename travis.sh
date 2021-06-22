#!/bin/bash
set -e

VERSION="0.0.1"
SOURCE_URL="https://github.com/Princess-org/Princess/releases/download/v${VERSION}-alpha/princess-${VERSION}.zip"

echo "Downloading Princess compiler from github..."
mkdir -p bin build
wget -O bin/princess-dl.zip $SOURCE_URL
unzip -d bin/princess-dl bin/princess-dl.zip
mv bin/princess-dl/bin/princess bin/princess
rm -r bin/princess-dl
rm bin/princess-dl.zip

echo "Building the compiler..."
chmod +x ./bin/princess
./bin/princess -d --include=src --buildfolder=build --outfile=bin/princess2 src/main.pr
echo "Running test suite..."
chmod +x ./bin/princess2
./bin/princess2 --test
echo "Compiling secondary test..."
./bin/princess2 -d --include=src --buildfolder=build --outfile=bin/test src/test/test.pr
chmod +x ./bin/test
./bin/test