terraform {
    required_version = ">1.0.0"
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "~>2.0"
        }
    }
}

provider "digitalocean" {
    token = var.token
}

resource "digitalocean_droplet" "vm_live_tf" {
    image = "ubuntu-20-04-x64"
    name = var.nome_droplet
    region = var.regiao
    size = var.setup_droplet
    ssh_keys = [data.digitalocean_ssh_key.ssh_local.id]
}

data "digitalocean_ssh_key" "ssh_local" {
    name = "Avell"
}

variable "token" {}
variable "nome_droplet" {}
variable "regiao" {}
variable "nome_droplet" {}
variable "setup_droplet" {}