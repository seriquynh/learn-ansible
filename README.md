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
ansible -i hosts -m ping all
```

Run some playbooks.

```bash
ansible-playbook -i hosts --become install_apache.yml
```

## References
- https://github.com/aoudiamoncef/ubuntu-sshd
