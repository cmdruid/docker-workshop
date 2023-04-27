# Mount an External Filesystem

You can mount an external file system to a container by specifying a relative `./` or absolute `/` path.

```bash
docker run -v /EXT_PATH:/INT_PATH IMG_NAME
```

File systems may be mounted as read-only with `:ro` or as read-write with `:rw`.

Example use:

```bash
docker run -v ./src:/root/src:rw node-demo
```

More documentation on using bind mounts can be found here:
https://docs.docker.com/storage/bind-mounts

