resource "proxmox_vm_qemu" "resource-name" {
  name        = "terraform-test"
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
