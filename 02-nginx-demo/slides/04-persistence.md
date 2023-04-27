---
marp: true
---

# Container Persistance

Containers will run until their main process is completed, then shut down.

For example, try running `nginx-img` with the following arguments:

```bash
docker run nginx-img -g "daemon on;"
```

When `nginx` is run as a background process, the container will stop, because there is no main process to keep the container alive.

<!-- Speaker Notes:
  There are cool hacks that you can use to make a container run indefinitely.
  Example: tail -n 1 -f /dev/null
-->

---

# File Persistance

Docker images are static. Changes within a container will not change the image.

You can add persistant storage to a container by creating a volume:

```bash
docker run -v VOLUME_LABEL:/INT_PATH IMG_NAME
```

You can manage local volumes using `docker volume`:
https://docs.docker.com/engine/reference/commandline/volume

---

# Demo Exercise

Try renaming `hello.html` to `index.html` inside the container:

```bash
## Launch a demo container, then login and rename the html file.
docker run -d --name demo nginx-demo
docker exec -it demo bash
mv hello.html index.html

## Restart the container, then check the filesystem.
docker demo restart
docker exec -it demo bash
ls
```

Re-create the container with a persistent volume:

```bash
docker rm --force demo
docker run -d -v data:/var/www/html --name demo nginx-demo
```

Try renaming the file a second time. Do the changes persist after a restart?
