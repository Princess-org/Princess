#!/bin/bash

source scripts.sh

mkdir -p build bin
if [[ ! -f bin/princess ]]; then
    download
    genstdlib
fi

if [[ -z $1 ]]; then
    build
else
    case $1 in 
        "release") release ;;
        "test") testsuite ;;
        "clean")
            rm -rf build
            rm -f princess*.tar.gz
            ;;
        "download") download ;;
        *) build "${@:1}" ;;
    esac
fi