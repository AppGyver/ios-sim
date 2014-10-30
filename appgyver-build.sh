#!/usr/bin/env sh

rm -rf build

xcodebuild && cp build/Release/ios-sim npm/bin/ios-sim

echo "Version is: "
npm/bin/ios-sim --version

