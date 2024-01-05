#!/usr/bin/env bash

./scripts/build.sh

rm -rf node_modules/@nxpkg
cp -r build/packages node_modules/@nxpkg
