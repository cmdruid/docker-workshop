---
marp: true
---

# Demo Lightning Workbench

This demo environment uses the following layout:

```bash
build          ## Build needed binaries files from source.
config         ## Configuration files for your nodes.
image          ## Root filesystem for your image.
plugins        ## Live volume shared with your containres.
compose.yml    ## Main composition file for your stack.
dockerfile     ## Dockerfile for compiling your image.
```

---

# Downloading Binaries

It's important to grab the latest release binaries for bitcoin and lightning software.

Bitcoin Core:
https://bitcoincore.org/en/download

Core Lightning (for this demo):
https://github.com/ElementsProject/lightning/releases

Unpack and place in your `image` folder. Make sure file paths are correct!

---

# Building from Source

You can also build binaries from source using dockerfiles!

Check out the `build` folder for examples.

Example Usage:

```bash
cd build
docker build -f bitcoin.dockerfile -o type=local,dest=out .
```

---

# Working with Polar

Polar is a docker-based tool for creating a simulated lightning network.

* Spin up multiple nodes and connect them with the click of a button.

* Supports the three main implementations (LND, CLN, and Eclair).

* Slick UI for easily opening and funding channels between nodes. 

* We can connect our node to the polar network and test against other nodes.

Download the Polar software here:
https://lightningpolar.com

<!-- Notes:
  * Cover how our node connects to the polar network in docker.
  * Cover the RPC connection to the bitcoin backend in polar.
-->

---

# Let's Get Started!
