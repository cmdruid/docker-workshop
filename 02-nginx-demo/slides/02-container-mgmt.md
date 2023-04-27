---
marp: true
---

# Managing Docker Containers

To stop an existing container, use `docker stop`. 

```bash
docker stop CONTAINER_ID
```

To remove the container, use `docker rm`.

```bash
docker rm CONTAINER_ID
```

Stop and remove in one command with the `--force` flag.

```bash
docker rm --force CONTAINER_ID
```

You can also use `docker start` and `docker restart` to manage your containers.

---

# Command Cheat Sheet

Docker includes dedicated sub-commands for managing each resource:  

```bash
docker container ls | rm | prune | start | stop | inspect
```

```bash
docker image ls | rm | prune
```

```bash
docker network ls | rm | prune
```

```bash
docker volume ls | rm | prune
```
