#!/bin/bash
#
error() {
    echo "$(basename "$0"): ERROR - $*" >&2
    echo "syntax: $(basename "$0") [-x] [-y] directory" >&2
    exit 1
}
dir=
xflag=false
yflag=false
while [ $# -gt 0 ]; do
    if [ "$1" = '-x' ]; then
        xflag=true
    elif [ "$1" = '-y' ]; then
        yflag=true
    else 
        # assume it's the filename
        [ ! -d "$1" -o ! -w "$1" ] && error "'$1' is not a writable directory"
        [ $# -ne 1 ] && error "arguments cannot follow directory"
        dir="$1"
    fi
    shift
done
[ -z "$dir" ] && error "required writable directory argument missing"
echo "xflag=$xflag, yflag=$yflag, dir='$dir'"


