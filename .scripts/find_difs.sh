#!/usr/bin/env bash
set -e
# latest commit
LATEST_COMMIT=$(git rev-parse HEAD)

# latest commit where path/to/folder1 was changed
GO_1_10_COMMIT=$(git log -1 --format=format:%H --full-diff -- go/10)
GO_1_11_COMMIT=$(git log -1 --format=format:%H --full-diff -- go/11)
PROTO_COMMIT=$(git log -1 --format=format:%H --full-diff -- proto)
PYTHON_BUILDER_3_6_COMMIT=$(git log -1 --format=format:%H --full-diff -- python/builder/3.6)
PYTHON_BUILDER_3_6_DEV_COMMIT=$(git log -1 --format=format:%H --full-diff -- python/builder/3.6-dev)


if [[ $GO_1_10_COMMIT = $LATEST_COMMIT ]];
    then
        echo go/10
elif [[ $GO_1_11_COMMIT = $LATEST_COMMIT ]];
    then
        echo go/11
elif [[ $PROTO_COMMIT = $LATEST_COMMIT ]];
    then
        echo proto
elif [[ $PYTHON_BUILDER_3_6_COMMIT = $LATEST_COMMIT ]];
    then
        echo python/builder/3.6
elif [[ $PYTHON_BUILDER_3_6_DEV_COMMIT = $LATEST_COMMIT ]];
    then
        echo python/builder/3.6-dev
else
     echo ""
     exit 0;
fi