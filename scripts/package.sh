#!/usr/bin/env bash

SCHEMATICS_VERSION=$1
NXPKG_VERSION=$2

./scripts/build.sh

cd build/packages
sed -i "" "s|exports.nxpkgVersion = '\*';|exports.nxpkgVersion = '$NXPKG_VERSION';|g" schematics/src/utility/lib-versions.js
sed -i "" "s|exports.schematicsVersion = '\*';|exports.schematicsVersion = '$SCHEMATICS_VERSION';|g" schematics/src/utility/lib-versions.js


tar -czf bazel.tgz bazel
tar -czf nxpkg.tgz nxpkg
tar -czf schematics.tgz schematics
