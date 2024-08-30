provider "proxmox" {
  pm_api_url = "https://192.168.1.101:8006/api2/json"
  pm_debug = true
}

terraform {
  required_providers {
    proxmox = {
        source = "Terraform-for-Proxmox/proxmox"
        }
  }
}