#!/usr/bin/env bash
## Entrypoint Script

set -E

###############################################################################
# Environment
###############################################################################

CMD="lightningd"
PARAMS="$@"

[ -z "$NETWORK" ] && NETWORK="regtest"

###############################################################################
# Main
###############################################################################

## Check if binary exists.
[ -z "$(which $CMD)" ] && (echo "$CMD file is missing!" && exit 1)

chmod +x /plugins/hotloader/hotloader.py

## Add network flag to params.
PARAMS="--network $NETWORK --conf /config/lightningd.conf $PARAMS"

## Display our hostname and IP address.
ETH0ADDR="$(ip addr show eth0 | grep -w inet | awk '{print $2}' | cut -d/ -f1)"
printf "Running $(uname -n) [$ETH0ADDR] on $(uname -o) $(uname -m) platform.\n\n"

## Print our params string.
echo "Executing $CMD with params:"
for line in $PARAMS; do echo $line; done && echo

## Start lightningd.
$CMD $PARAMS
