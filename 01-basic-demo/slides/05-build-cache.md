# Working with build cache

Each instruction in a dockerfile has its own context, and is cached by default.  

*(sometimes this is not what you want!)*

To build a dockerfile without using any cache, use the `--no-cache ` flag:

```bash
docker build -t demo-img --no-cache .
```

