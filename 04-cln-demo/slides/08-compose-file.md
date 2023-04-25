---
marp: true
---

# Using Compose files

```yml
version: '3'

services:
  demo:
    build: .
    ## If we're doing fancy things, we may need to extend docker's privileges. 
    # cap_add:
    #   - NET_ADMIN
    # devices:
    #   - /dev/net/tun
    ## Name of our docker image.
    image: demo:latest
    ## Name of our docker container.
    container_name: workbench
    ## Network name of our docker container.
    hostname: workbench
    ## Location of our environment file.
    env_file: .env
    ## Use internal process manager.
    init: true
    ## Connect our container to the following docker networks.
    networks:
      - net
    ## Expose our container's ports with the following mapping.
    ports:
      - 8080:8080
    ## Configure our restart policy.
    restart: unless-stopped
    ## Enable a terminal for us to connect to.
    tty: true
    ## Mount these volumes on our container.
    volumes:
      - ./config:/config:ro
      - ./data:/data:rw
      - ./home:/root/home:rw

## Configure which docker networks are available.
networks:
  net:
    name: 'workbench'


```