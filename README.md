# Princess 
![Build Status](https://github.com/Princess-org/Princess/actions/workflows/build-and-test.yml/badge.svg)
![Build on Windows](https://github.com/Princess-org/Princess/actions/workflows/windows.yml/badge.svg)

## Documentation
https://princess.sh

Site hosted by github-pages. Source over at https://github.com/Princess-org/Princess-org.github.io

## Build instructions
Note: The linux release does only work properly on Ubuntu 20.04 and derivatives, due to its dependencies.

There is a native Windows version, but for working on the compiler it is recommended to use 
WSL in order to get a Linux environment. This is because the tests currently don't run on Windows since
it would take too log to build them.

You need Python >= 3.9 in order to run the build scripts. Install dependencies with:
```
$ pip install -r requirements.txt
```

In order to bootstrap the compiler simply run:
```
$ ./build.py download
$ ./build.py -p
```

The finished compiler is found at `bin/princess2`. Use this one to test new features on.
