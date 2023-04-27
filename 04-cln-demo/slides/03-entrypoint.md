# Using an Entrypoint Script

Some docker environments may need additional setup at runtime. A common practice is to use an `entrypoint.sh` script.

* Entrypoint scripts are commonly written in `bash`, but can be in any language!

* You can configure multi-process containers (such as using `tor` and `lightnind`). 

* Enable multi-process support with `--init` flag (or `init: true` in compose).

