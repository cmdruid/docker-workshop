---
marp: true
---

# Using Docker Run

To run an image inside a container, use the `docker run` command:

```bash
docker run IMAGE_NAME
```

Example usage:
```bash
docker run demo-img
```

Supply different arguments:
```bash
docker run demo-img goodbye world
```

---

# Commom Usage

Here are some common flags that you will see used with `docker run`:

```bash
docker run
  --name CONTAINER_NAME  ## Tag the container with a name.
  --hostname HOST_NAME   ## Specify an internal hostname.
  -p EXT_PORT:INT_PORT   ## Forward a port from the container.
  -v EXT_PATH:INT_PATH   ## Attach a volume to the container.
  IMAGE_NAME             ## Name of the image to use
  CMD_ARGUMENTS          ## (optional) Specify entrypoint arguments.
```

Example:
```bash
docker run --name demo-container -p 8080:80 -v ./demo/mount:/data node:latest
```

Docker Run Documentation:
https://docs.docker.com/engine/reference/commandline/run

---

# Inspecting an Image

To inspect an image, run it inside a container with an interactive terminal:

```bash
docker run -it --entrypoint bash demo-img
```

To exit the interactive terminal, type `exit` and press enter.

This is a great way to build, test and debug images!
