# Demo Exercise

Spawn a demo container:

```bash
docker run -v ./src:/root/src:rw node-demo
```

Using a code editor, change the contents of `src/app.js`:

```js
const LISTEN_PORT = 3001 // Change this number.
```

Check the console output. The server should update and refresh in real-time!

