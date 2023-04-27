---
marp: true
---

# Using Docker Build

Basic usage of docker build.

```bash
docker build
  -t TAG_NAME        ## Tag your image with a name.
  -f DOCKERFILE_DIR  ## Location of your dockerfile.
  CONTEXT_DIR        ## The base path you wish to build from.
```

Example usage:

```bash
docker build -t demo-img .
```

Documentation for Docker Build command:  
https://docs.docker.com/engine/reference/commandline/build

---

# Working with build cache

Each instruction in a dockerfile has its own context, and is cached by default.  

*(sometimes this is not what you want!)*

To build a dockerfile without using any cache, use the `--no-cache ` flag:

```bash
docker build -t demo-img --no-cache .
```
