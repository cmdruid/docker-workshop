---
marp: true
---

# Container Persistance

Docker containers will run until their main process is completed, then they will shut down.

For example, try running `nginx-img` with the following arguments:

```bash
docker run nginx-img -g "daemon on;"
```

When `nginx` is run as a background process, the container will stop, because there is no main process to keep the container alive.

---

# File Persistance

Docker images are static. Changes within a container will not change the image.

You can add persistant storage to a container by creating a volume:

```bash
docker run -v VOLUME_LABEL:/INT_PATH IMG_NAME
```

Example usage:

```bash
docker run -v data:/var/www/html nginx-demo
```

You can manage local volumes using `docker volume`:
https://docs.docker.com/engine/reference/commandline/volume

---

# Mount an External Filesystem

You can mount an external file system within a container:

```bash
docker run -v /EXT_PATH:/INT_PATH IMG_NAME
```

Example usage:

```bash
docker -v ./html:/var/www/html nginx-demo
```

You can even mount a single file using the `--mount` flag. Example usage:
```bash
docker run --mount type=bind,source="$(pwd)/html/hello.html",target=/var/www/html/index.html nginx-demo
```

More documentation on using bind mounts can be found here:
https://docs.docker.com/storage/bind-mounts

---

# Demo Exercise

* Try renaming `hello.html` to `index.html` inside the container.
  What happens when you restart the container?
* Try doing the above, but with a new container using `-v /var/www/html`.
* Try doing the first step, but with a new container using the above `--bind` example.

