# Dockerfile Instructions

Some common instructions you will see in a dockerfile:

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

