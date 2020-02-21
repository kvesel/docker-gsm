# Dockerized gr-gsm

## Steps

### Complete device/network specific changes

Not covered here.

### Build the image

```
make
```

### Run the container

```
docker run --interactive --tty --attach STDOUT --rm ${USER}/gr-gsm:latest
```

