# Dev Setup

## Provisionamento

### Antes de tudo

#### Fedora

```bash
dnf update
dnf install git ansible
```

#### Ubuntu 

```
sudo apt update
sudo apt upgrade
sudo apt install git ansible
```
```
    ansible-galaxy collection install community.general
```
Executar playbook principal

```bash
ansible-playbook main.yml -vv -e "{ laptop_mode: True }" -e "local_username=$(id -un)" -K
```
