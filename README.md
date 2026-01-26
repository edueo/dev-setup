# Dev Setup

## Provisionamento

### Antes de tudo

#### Fedora

```bash
dnf update
dnf install git ansible
```
Para sistemas imutaveis, usar rpm-ostree update

rpm-ostree install ansible --apply-live

Toda alteracao do sistema sera gerada uma nova imagem do SO

Apos a instalacao do ansible, sera solicitado a reinicializacao do sistema
Changes queued for next boot. Run "systemctl reboot" to start a reboot


#### Ubuntu 

```
sudo apt update
sudo apt upgrade
sudo apt install git ansible
```

Executar playbook principal

```bash
ansible-playbook main.yml -vv -e "{ laptop_mode: True }" -e "local_username=$(id -un)" -K
```
