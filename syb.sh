#!/bin/bash

# ./autogen.sh --with-java-runtime-library=openjdk8 --prefix=$(realpath ../build)

make && make install

echo "Copy 'libjvm.so' to OpenJDK:"
sudo cp $(realpath ../build)/lib/libjvm.so /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/jamvm/libjvm.so
echo "Copy done."
