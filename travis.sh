#!/bin/bash
set -e

source scripts.sh

mkdir -p build bin
download
genstdlib
echo "Building the compiler..."
build
echo "Building test suite..."
testsuite
echo "Running test suite..."
./bin/testsuite