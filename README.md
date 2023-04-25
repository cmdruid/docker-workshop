

# Docker Crash Course

How to setup a Pleb Lightning Node for Production and Development.

**Presentation Link:**  
https://slugify.link/dockerworkshop  


## Overview

- What is a Docker Container?
- Setup a Docker Environment
- How to use Docker (CLI, Compose, Portainer)
- Create a simple template project.
- Launch your own Lightning Node.

## Setting up a Docker Environment

- Get Docker Desktop:  
  https://docs.docker.com/get-docker  

- Get Docker Engine:  
  https://docs.docker.com/engine/install  

- (optional) Get VScode Extention:  
  https://code.visualstudio.com/docs/containers/overview  

- (optional) Register on Docker Hub:  
  https://hub.docker.com  

## Ways to use Docker

- Docker Command-Line:  
  https://docs.docker.com/engine/reference/commandline/cli  

- Docker Build:  
  https://docs.docker.com/engine/reference/builder  

- Docker Compose:  
  https://docs.docker.com/compose/compose-file  

- Docker Desktop:  
  https://docs.docker.com/desktop  

- VSCode Extention:  
  https://code.visualstudio.com/docs/containers/overview  

- Portainer:  
  https://docs.portainer.io/start/install/server/docker  

## Anatomy of a Docker Project

* `.dockerfile`:  
  Builds your docker image.

* `entrypoint.sh`:  
  Runs inside your container.  

* `build.sh` and `start.sh` scripts:  
  (optional)  

* `compose.yml`:  
  Configures your docker container (or many containers!)

## Docker Hello World
```sh
## Launch a container with nodejs.
docker run -it -p 80:80 node:latest
```
```js
// Run a simple program.
for (let c of ‘Hello world!’) { 
  console.log(c)
}
```

## Workbench Pattern
```md
Build       : Everything for building.
Config      : Read-only store for configs.
Data        : For storing persistent data.
Home        : Home and entrypoint for dev.
Image       : Copied to ‘/’ at build time. 
.env        : Configures environment vars.
Dockerfile  : Main image build file.
Compose.yml : Main container config.

https://github.com/cmdruid/workbench
```

## Sample Projects

**Neutrino Workbench (LND):**  
https://github.com/cmdruid/neutrino-workbench  

**Sauron’s Workbench (CLN):**  
https://github.com/cmdruid/saurons-workbench  

**Satoshi’s Workbench (Core):**  
https://github.com/cmdruid/satoshi-workbench  
