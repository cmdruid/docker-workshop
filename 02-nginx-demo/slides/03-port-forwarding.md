---
marp: true
---

# Port Forwarding

Docker assigns a local IP address for each container. You can use `docker inspect` to find it:

```bash
docker inspect CONTAINER_ID | grep IPAddress
```

You can forward the port of a container to your localhost using the `-p` flag:

```bash
docker run -p EXT_PORT:INT_PORT IMAGE_NAME
```

You can manage local networks using `docker network`:
https://docs.docker.com/engine/reference/commandline/network

---

# Demo Exercise

Example usage:
```bash
docker run -p 8080:80 nginx-demo
```

* Try accessing `hello.html` from the container's local IP address.
* Try accessing `hello.html` from your localhost:8080 address.
