# docker-knot-ssh

A Knot DNS Docker container with an SSH server for remote control and zone updates.

# Container parameters

## Volumes

In addition to the volumes of the standard Knot container, this one exposes:
/var/lib/knot-ssh, which containers
* host_keys
* public_keys
