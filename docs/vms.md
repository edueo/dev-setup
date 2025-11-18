# Vms

Usando QEMU, tendo como referência esse guia:
https://github.com/cleuton/rustingcrab/tree/main/Criar%20e%20rodar%20VM%20com%20QEMU

## Subindo Vms

1. Criar o disco virtual: `qemu-img create -f qcow2 {DISK_NAME}.qcow2 100G`
2. Baixar a ISO do sistema operacional
3. Iniciar a vm
```
qemu-system-x86_64 \
  -enable-kvm \
  -m 2048 \
  -cpu host \
  -smp 2 \
  -cdrom ./{SO}.iso \
  -drive file={DISK_NAME}.qcow2,format=qcow2 \
  -boot d \
  -vga virtio
```
4. Após a instalação, executar a VM sem o cdrom montoado.
```
qemu-system-x86_64 \
  -enable-kvm \
  -m 2048 \
  -cpu host \
  -smp 2 \
  -drive file={DISK_NAME}.qcow2,format=qcow2 \
  -vga virtio
```

