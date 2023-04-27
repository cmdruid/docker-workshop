#!/usr/bin/env bash
## This profile is loaded upon login.
## Feel free to add your own aliases and shortcuts!

###############################################################################
# Environment
###############################################################################

## Configure lightning-cli shortcut.
[ -z "$NETWORK" ] && NETWORK="regtest"
alias lcli="lightning-cli --network $NETWORK"

## Shortcuts to logfiles.
debug() { 
  tail -f "/root/.lightning/lightningd.log"
}

## Get QR codes for exporting complex strings.
qrcode() {
  [ "$#" -ne 0 ] && input="$1" || input="$(tr -d '\0' < /dev/stdin)"
  echo && qrencode -m 2 -t "UTF8" "$input" && printf "${input}\n\n"
}

## Run .init on login.
[ -f '/root/.init' ] && . /root/.init
