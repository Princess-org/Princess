source version
SOURCE_URL="https://github.com/Princess-org/Princess/releases/download/v${VERSION}-alpha/princess-${VERSION}.tar.gz"

function build {
    bin/princess -d -Isrc --buildfolder=build --outfile=bin/princess2 src/main.pr "$@"
}

function release {
    FOLDER="princess-${VERSION}"

    echo "First compilation pass"
    build
    echo "Second compilation pass"
    bin/princess2 -d -Isrc --buildfolder=build --outfile=bin/princess3 src/main.pr 
    mkdir -p $FOLDER
    mkdir -p $FOLDER/bin
    cp princess.h $FOLDER
    cp ./bin/princess2 $FOLDER/bin/princess
    cp version $FOLDER
    cp -r ./include $FOLDER/include
    tar -zcvf "${FOLDER}.tar.gz" $FOLDER
    rm -r $FOLDER
}

function testsuite {
    if [[ ! -f bin/princess2 ]]; then
        build 
    fi
    bin/princess2 -d -Isrc --buildfolder=build --outfile=bin/testsuite src/test/main.pr "$@"
}

function download {
    echo "Downloading Princess compiler from Github..."
    mkdir -p bin build
    wget -O bin/princess-dl.tar.gz $SOURCE_URL
    mkdir bin/princess-dl && tar xf bin/princess-dl.tar.gz -C bin/princess-dl --strip-components 1
    mv bin/princess-dl/bin/princess bin/princess
    rm -r bin/princess-dl
    rm bin/princess-dl.tar.gz
}

function genstdlib {
    echo "Building standard library..."
    python3.9 include/gencstd.py
}