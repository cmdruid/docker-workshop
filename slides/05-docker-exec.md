---
marp: true
---

# Using Docker Exec

Common layout of exec command.
```bash
docker exec -it CONTAINER_NAME ENTRYPOINT CMD
```

Example usage of exec command.
```bash
docker exec -it demo-container bash
```

- Exec can execute anything (show example of ls or ps or w/e)
- Exec is commonly used to login via bash.
- Show examples of customizing bash entry (.bashrc, .profile, etc.)