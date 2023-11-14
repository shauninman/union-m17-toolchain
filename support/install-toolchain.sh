#!/bin/sh

mkdir -p /opt/m17-toolchain
if [ -d /opt/m17-toolchain/usr ]; then
	rm -fr /opt/m17-toolchain/usr
fi
cp -rf ~/buildroot/output/host/usr/ /opt/m17-toolchain/
# this version of buildroot doesn't have relocate-sdk.sh yet so we bring our own
cp ~/relocate-sdk.sh /opt/m17-toolchain/
cp ~/sdk-location /opt/m17-toolchain/
/opt/m17-toolchain/relocate-sdk.sh