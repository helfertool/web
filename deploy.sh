#!/bin/bash

set -eu

# handle arguments
if [ "$#" != "1" ] ; then
    echo "Usage: $(basename "$0") stage" >&2
    exit 1
fi

case "$1" in
    "testing")
        SERVER="narfi.net"
        DIR="public_html/helfertool/"
        HUGO_ARGS="-b https://www.narfi.net/~hertle/helfertool/"
        ;;
    "public")
        echo "not implemented"
        exit 1

        SERVER="narfi.net"
        DIR="/srv/www/helfertool.de/"
        HUGO_ARGS="-b https://www.helfertool.de/"
        ;;
    *)
        echo "Invalid stage: $1" >&2
        exit 1
        ;;
esac

# switch to directory of script
dir="$(readlink -f $(dirname "$0"))"
cd "$dir"

# compile page
rm -rf public
hugo $HUGO_ARGS

# copy to server
rsync -r --delete public/ "$SERVER:$DIR/"
