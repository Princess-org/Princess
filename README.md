<img src="https://raw.githubusercontent.com/Princess-org/vscode-Princess/7d8a22d355a42f6c04401421898cf6c0fcc50732/icons/crown.svg" width="120" align="left"/>

# Princess
![Build Status](https://github.com/Princess-org/Princess/actions/workflows/build-and-test.yml/badge.svg)
![Build on Windows](https://github.com/Princess-org/Princess/actions/workflows/windows.yml/badge.svg)

## Documentation
https://princess.sh

Site hosted by github-pages. Source over at https://github.com/Princess-org/Princess-org.github.io

## Build instructions

<s>Note: The linux release does only work properly on Ubuntu 20.04 and derivatives, due to its dependencies.</s>

There is now a bootstrap compiler provided on the releases page. This compiler doesn't have any dependencies (except clang >= 13) and is statically linked using MUSL.
In order to use it you need to download the .tar.gz file, extract it and place `princess` in the bin directory. The other alternative is cloning the repo and doing the same there.

Building the bootstrap compiler is not very straight forward but will eventually be handled by the CI process.

There is a native Windows version, but for working on the compiler it is recommended to use 
WSL in order to get a Linux environment. This is because the tests currently don't run on Windows since
it would take too log to build them.

You need Python >= 3.9 in order to run the build scripts. Install dependencies with:
```
$ pip install -r requirements.txt
```

In order to bootstrap the compiler simply run:
```
$ ./build.py -p
```

The finished compiler is found at `bin/princess2`. Use this one to test new features on.
