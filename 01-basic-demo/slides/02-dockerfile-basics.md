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

