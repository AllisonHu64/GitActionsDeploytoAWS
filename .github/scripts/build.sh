#!/bin/bash
set -xe

yarn install
yarn build
cd build
zip -r ../hello-world.zip ./*