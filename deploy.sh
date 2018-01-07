#!/bin/bash

set -eu

SERVER="narfi.net"
DIR="/srv/www/helfertool.org/"

# switch to directory of script
dir="$(readlink -f $(dirname "$0"))"
cd "$dir"

# compile page
rm -rf public
hugo

# copy to server
rsync -r --delete public/ "$SERVER:$DIR/"
