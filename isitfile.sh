#!/bin/bash
#
# modified by Mary Liu
# 5/22/2018
# isitfile.bash - test single argument to see if it is a file
#
#
if [ $# -ne 1 ]; then
    echo "$0: expected single argument"
    exit 1
fi
THING=$1
if [ -f "$THING" ]; then
    echo "$THING is a file"
else
    echo "$THING is not a file"
fi

