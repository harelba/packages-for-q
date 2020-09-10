#!/bin/bash
set -e

VERSION=$1

mkdir -p single-binary/Darwin/${VERSION}
curl -L https://github.com/harelba/q/releases/download/${VERSION}/q-x86_64-Darwin -o single-binary/Darwin/${VERSION}/q
chmod +x single-binary/Darwin/${VERSION}/q

mkdir -p single-binary/x86_64/${VERSION}
curl -L https://github.com/harelba/q/releases/download/${VERSION}/q-x86_64-Linux -o single-binary/x86_64/${VERSION}/q
chmod +x single-binary/x86_64/${VERSION}/q

# This is the windows standalone executable itself (essentially q.exe)
mkdir -p single-binary/windows/${VERSION}
curl -L https://github.com/harelba/q/releases/download/${VERSION}/q-AMD64-Windows.exe -o single-binary/windows/${VERSION}/q-AMD64-Windows.exe

# This goes to the original windows installer folder

curl -L https://github.com/harelba/q/releases/download/${VERSION}/q-AMD64-Windows-installer.exe -o windows/setup-q-${VERSION}.exe

