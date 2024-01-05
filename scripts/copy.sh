#!/usr/bin/env bash

./scripts/build.sh


path=${PWD}
echo $path
sed -i "" "s|nxpkg/bazel-build|file:$1/node_modules/@nxpkg/bazel|g" build/packages/bazel/src/workspace/files/package.json__tmpl__
sed -i "" "s|nxpkg/schematics-build|file:$1/node_modules/@nxpkg/schematics|g" build/packages/bazel/src/workspace/files/package.json__tmpl__

rm -rf $1/node_modules/@nxpkg
cp -r build/packages $1/node_modules/@nxpkg
