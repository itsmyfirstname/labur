resource "proxmox_vm_qemu" "portainer" {
  name        = "portainer"
  target_node = "aceprox"
  iso         = "local:iso/${var.available_vms.debian}"
  cores = 2
  cpu = "x86-64-v2-AES"
  memory = "4096"

  network {
    model = "virtio"
    bridge = "vmbr0"
    firewall = true
  }
  disk {
    type = "scsi"
    storage = "local-lvm"
    size = "200G"
    iothread = 1
  }
}

resource "proxmox_vm_qemu" "utility" {
  name        = "utility"
  target_node = "aceprox"
  iso         = "local:iso/${var.available_vms.debian}"
  cores = 6
  cpu = "x86-64-v2-AES"
  memory = 1024 * 32
  

  network {
    model = "virtio"
    bridge = "vmbr0"
    firewall = true
  }
  disk {
    type = "scsi"
    storage = "local-lvm"
    size = "200G"
    iothread = 1
  }
}

resource "proxmox_vm_qemu" "postgres" {
  name        = "postgres"
  target_node = "aceprox"
  iso         = "local:iso/${var.available_vms.debian}"
  cores = 2
  cpu = "x86-64-v2-AES"
  memory = 1024 * 8
  

  network {
    model = "virtio"
    bridge = "vmbr0"
    firewall = true
  }
  disk {
    type = "scsi"
    storage = "local-lvm"
    size = "200G"
    iothread = 1
  }
}