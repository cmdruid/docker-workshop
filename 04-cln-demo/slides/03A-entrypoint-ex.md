# Example `entrypoint.sh`

```bash
#!/usr/bin/env bash

BIN="lightningd"
ARGS="$@"

## Set default network.
[ -z "$NETWORK" ] && NETWORK="regtest"

## Check if main binary exists.
if [ -z "$(which $BIN)" ]; then
  echo "$BIN file is missing!" && exit 1
fi

## Start lightningd with arguments.
$BIN $ARGS \
  --network $NETWORK \
  --conf /config/lightningd.conf
```

