#!/bin/bash

source version.sh

FOLDER="princess-${VERSION}"

./bin/princess -d --include=src --buildfolder=build --outfile=bin/princess2 src/main.pr
mkdir -p $FOLDER
mkdir -p $FOLDER/bin
cp ./bin/princess2 $FOLDER/bin/princess
cp -r ./include $FOLDER/include
tar -zcvf "${FOLDER}.tar.gz" $FOLDER
rm -r $FOLDER