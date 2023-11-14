#!/bin/sh

cd /opt/
tar --xz -cvf m17-toolchain.tar.xz m17-toolchain/
mv m17-toolchain.tar.xz ~/workspace/

printf "m17-toolchain.tar.xz can be shared as a blob\nby placing in support before calling 'make shell'\n"