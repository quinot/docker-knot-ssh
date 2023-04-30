FROM cznic/knot:latest

RUN apt update

# Install OpenSSH server and remove install-time host keys
RUN RUNLEVEL=1 apt install -y openssh-server && rm -f /etc/ssh/ssh_host_*

# Set up user account
ARG KNOT_SSH_UID=5322
RUN adduser --quiet --system --group --no-create-home --home /storage/knotssh/home --uid=${KNOT_SSH_UID} knotssh

# Install files
COPY files/ /

ENTRYPOINT ["/sbin/entrypoint"]
