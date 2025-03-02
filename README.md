Learn ansible

## Installation

Generate a SSH key pair. (It requires no passphrase)

```powershell
ssh-keygen -t ed25519 -f ".\ssh-data\id_ed25519" -N '""' -C "Control Node"
```

Build and run containers.

```powershell
docker compose up -d --build
```

## References
- https://github.com/aoudiamoncef/ubuntu-sshd
