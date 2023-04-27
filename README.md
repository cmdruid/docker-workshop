# Docker Crash Course

How to setup a Pleb development environment using Docker.

**Presentation Link:**  
https://slugify.link/dockercrashcourse  


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
