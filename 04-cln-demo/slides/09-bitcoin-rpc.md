# Connect to Bitcoin Core

Lightning nodes need a Bitcoin node in order to manage on-chain transactions.

Example `lightningd.conf` configuration (for polar):

```conf
## Name / address of Bitcoind:
bitcoin-rpcconnect  = backend1

## Port for RPC connection:
bitcoin-rpcport     = 18443

## Credentials for RPC connection:
bitcoin-rpcuser     = polaruser
bitcoin-rpcpassword = polarpass
```

