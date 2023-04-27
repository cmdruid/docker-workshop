# Building from Source

You can also build binaries from source using dockerfiles!

Check out the `build` folder for examples.

Example Usage:

```bash
cd build
docker build -f bitcoin.dockerfile -o type=local,dest=out .
```

