# docker-knot-ssh

A Knot DNS Docker container with an SSH server for remote control and zone updates.

# Automated build

Automated builds of the image are available on:

- DockerHub: [quinot/knot-ssh](https://hub.docker.com/r/quinot/knot-ssh) ![Docker Image CI Status](https://github.com/quinot/docker-knot-ssh/workflows/Docker%20Image%20CI/badge.svg)

# Container parameters

## Env variables

`KNOT_SSH_PUBLIC_KEY`: public key allowed to SSH into the container for SFTP or knotc.

# TODO

* Transition to supervisord
