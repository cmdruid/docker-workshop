---
marp: true
---

# Nginx Demo

Build the image:
```bash
docker build -t nodejs-img .
```

Launch the container:
```bash
docker run -v ./src:/src nodejs-img
```
