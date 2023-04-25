---
marp: true
---

# What is a Dockerfile?

A dockerfile is a list of instructions used to assemble an image. Think of it as a shell script with extra stuff. 

```dockerfile
## Specify a base image to build from.
FROM debian:bullseye-slim

## Set command to run when container starts.
ENTRYPOINT [ "echo" ]

## OPTIONAL: Provide arguments to use with above command.
CMD [ "Hello", "World!" ]
```

---

# Common Instructions

Here are some common instructions that you will see in a dockerfile:

```
FROM       : Import an existing image (local or from docker hub).
COPY       : Copy files into the image.
RUN        : Run a shell script (and then cache it).
WORKDIR    : Set the current working directory.
ENTRYPOINT : Run a shell script on container start.
CMD        : supply arguments for entrypoint script.
```

Documentation for Dockerfile format:  
https://docs.docker.com/engine/reference/builder
