#!/bin/bash

docker run --restart always \
 -d --name arm32-dev-container \
 --network host -it \
 -v /Users/sibinarayananrevathi/dev/ARM-32bit/src:/home/workspace \
 arm32-bit-assembly-coding-dev