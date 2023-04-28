# Using Docker Build

Basic usage of docker build:

```bash
docker build
  -t TAG_NAME        ## Tag your image with a name.
  -f DOCKERFILE_DIR  ## Location of your dockerfile.
  CONTEXT_DIR        ## The base path you wish to build from.
```

Example Usage:

```bash
docker build -t demo-img .
```

Documentation for Docker Build command:  
https://docs.docker.com/engine/reference/commandline/build

