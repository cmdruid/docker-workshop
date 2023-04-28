# Working with RUN

Each command will run within its own environment. This has some caveats.

```dockerfile
## This set of instructions will fail.
RUN git clone example.git
RUN cd example
RUN make && make install
```

```dockerfile
## This set of instructions will pass.
RUN git clone example.git
RUN cd example && make && make install
```

Instructions like `ENV` and `WORKDIR` can be used to update the `RUN` environment.
