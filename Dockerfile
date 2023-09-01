FROM cznic/knot:latest

# Install OpenSSH server and remove install-time host keys

RUN apt update && \
  RUNLEVEL=1 apt install -y openssh-server && rm -f /etc/ssh/ssh_host_* && \
  apt install -y tini rsync

# Set up user account
ARG KNOT_SSH_UID=5322
RUN adduser --quiet --system --ingroup knot --no-create-home --home /storage/knotssh/home --uid=${KNOT_SSH_UID} --shell /bin/sh knotssh

# Install files
COPY files/ /

# Set up writable config directory
RUN mkdir -p /config/knot.conf.d /config/zones && chown -R knotssh /config

ENTRYPOINT ["/usr/bin/tini", "--", "/usr/sbin/entrypoint"]
