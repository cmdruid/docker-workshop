# Nginx Demo

Build the image:
```bash
docker build -t nodejs-img .
```

Launch the container:
```bash
docker run -p 8080:3000 -v ./src:/root/src nodejs-img
```

