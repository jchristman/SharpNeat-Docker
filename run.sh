#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     display_args="DISPLAY";;
    Darwin*)    display_args="DISPLAY=host.docker.internal:0";;
esac

xhost + 127.0.0.1

docker run --rm -it \
    -e $display_args \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/workspace:/work/workspace \
    sharpneat:latest \
    bash
