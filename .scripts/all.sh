#!/usr/bin/env bash

# builds and pushes all images. Used to initialize the repo if switching from org
# namespace.
#
# TODO maybe run this in nightly builds?


for f in $(find ../ -name 'build.sh'); do (DOCKERFILE=$(dirname $f) $f); done
for f in $(find ../ -name 'deploy.sh'); do (DOCKERFILE=$(dirname $f) $f); done