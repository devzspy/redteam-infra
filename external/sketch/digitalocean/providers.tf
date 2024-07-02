terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_pat
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}