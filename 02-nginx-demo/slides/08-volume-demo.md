# Demo Exercise

Try renaming `hello.html` to `index.html` inside the container:

```bash
## Launch a demo container, then login and rename the html file.
docker run -d --name demo nginx-demo
docker exec -it demo bash
mv hello.html index.html

## Restart the container, then check the filesystem.
docker demo restart
docker exec -it demo bash
ls
```

Re-create the container with a persistent volume:

```bash
docker rm --force demo
docker run -d -v data:/var/www/html --name demo nginx-demo
```

Try renaming the file a second time. Do the changes persist after a restart?

