# docker-knot-ssh

A Knot DNS Docker container with an SSH server for remote control and zone updates.

# Automated build

Automated builds of the image are available on:

- DockerHub: [quinot/knot-ssh](https://hub.docker.com/r/quinot/knot-ssh)
  - ![Docker Image CI Status](https://github.com/quinot/docker-knot-ssh/workflows/Docker%20Image%20CI/badge.svg)

# Container parameters

## Volumes

In addition to the volumes of the standard Knot container, this one exposes:
/var/lib/knot-ssh, which containers
* host_keys
* public_keys
