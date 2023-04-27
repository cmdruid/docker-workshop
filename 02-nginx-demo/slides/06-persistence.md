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

