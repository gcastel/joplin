#!/bin/bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR="$ROOT_DIR/app"

rsync -a --delete "$ROOT_DIR/../ReactNativeClient/lib/" "$BUILD_DIR/lib/"

cd "$BUILD_DIR"
npm install
yarn dist
