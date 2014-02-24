#!/usr/bin/env sh

rm -rf build

xcodebuild && cp build/Release/ios-sim dist/ios-sim

echo "Version is: "
dist/ios-sim --version

