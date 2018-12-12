# Jenkins JNLP Slave docker image with docker binary
This is docker image containing a Jenkins JNLP slave with the docker binary.

Available in dockerhub as gbobr/jnlp-slave

# How to use?
In order for this to work you will need to share your host's docker.sock as a host volume.

For example you can run it as a plain docker container:
```bash
docker run --volume /var/run/docker.sock:/var/run/docker.sock gbobr/jnlp-slave:latest
```

I personally use this with jenkins kubernetes plugin to spawn slave workers based on this image.
