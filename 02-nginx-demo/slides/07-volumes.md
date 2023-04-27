# File Persistance

Docker images are static. Changes within a container will not change the image.

You can add persistant storage to a container by creating a volume:

```bash
docker run -v VOLUME_LABEL:/INT_PATH IMG_NAME
```

You can manage local volumes using `docker volume`:  
https://docs.docker.com/engine/reference/commandline/volume

