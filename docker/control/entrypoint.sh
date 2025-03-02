#!/usr/bin/env bash

if [ -f /ssh/config ]; then
    cp /ssh/config /home/ansible/.ssh/
fi

if [ -f /ssh/id_ed25519 ]; then
    cp /ssh/id_ed25519 /home/ansible/.ssh/
fi

chown -R ansible:ansible /home/ansible/.ssh

chmod 600 /home/ansible/.ssh/id_ed25519

if [ $# -eq 0 ]; then
    tail -f /dev/null
else
    exec "$@"
fi
