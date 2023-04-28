# Example `compose.yml`

```yml
version: '3'

services:
  cln-alice:
    build: .
    image: cln-demo:latest
    container_name: cln-alice
    hostname: cln-alice
    restart: unless-stopped
    tty: true
    volumes:
      - alice-data:/root/.lightning:rw
      - ./config/alice:/config:rw
      - ./plugins:/plugins:rw
```

