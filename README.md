docker-gox
==========

The [mitchellh/gox](https://github.com/mitchellh/gox) Go cross compile tool.

Run from Docker Hub
-------------------

If the `GOPATH` environment variable is set correctly on the host system, [fstab/gox](https://registry.hub.docker.com/u/fstab/gox) can be run as follows:

```bash
docker run -v $GOPATH:/go -t -i fstab/gox
```

This will pull the image from docker hub, start the container, and launch a shell with the `gox` command available and the `GOPATH` mapped to `/go`.

If your project is something like `github.com/your/proj`, run gox as follows:

```bash
gox github.com/your/proj
```

You can also run `docker` and `gox` in a single call

```bash
docker run -v $GOPATH:/go -t -i fstab/gox gox github.com/your/proj
```

Build from Source
-----------------

1. Clone [fstab/docker-gox](https://github.com/fstab/docker-gox) from GitHub.
    
    ```bash
    git clone https://github.com/fstab/docker-gox.git
    ```
    
2. Build the docker image
    
    ```bash
    cd docker-gox
    docker build -t="fstab/gox" .
    ```
    
3. Run with the same command as described above.
    
    ```bash
    docker run -v $GOPATH:/home/go -t -i fstab/gox
    ```
