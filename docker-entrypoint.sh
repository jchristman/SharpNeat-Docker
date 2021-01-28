#!/bin/bash

if [ ! -d /work/workspace/sharpneat ]; then
    echo SharpNeat has not been moved into the workspace yet -- moving it now
    mv /work/sharpneat /work/workspace/sharpneat
fi

cd /work/workspace/sharpneat

exec $@
