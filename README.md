Learn ansible

## Installation

Generate an SSH key pair. (It requires no passphrase)

```powershell
ssh-keygen -t ed25519 -f ".\ssh\id_ed25519" -N '""' -C "Control Node"
```

Build and run containers.

```powershell
docker compose up -d --build
```

## Usage

Access the control node.

```bash
docker compose exec -it control bash
```

E.g. ping all servers.

```bash
ansible all -i hosts -m ping
```

Modify `ansible` directory however you want, then try out ansible commands.

## References
- https://github.com/aoudiamoncef/ubuntu-sshd
