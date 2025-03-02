#!/usr/bin/env bash

if [ -f /ssh-data/config ]; then
    cp /ssh-data/config /home/ansible/.ssh/
fi

if [ -f /ssh-data/id_ed25519 ]; then
    cp /ssh-data/id_ed25519 /home/ansible/.ssh/
fi

chown -R ansible:ansible /home/ansible/.ssh

chmod 600 /home/ansible/.ssh/id_ed25519

if [ $# -eq 0 ]; then
    tail -f /dev/null
else
    exec "$@"
fi
