resource "digitalocean_tag" "op_number" {
  name = var.op
}

resource "digitalocean_tag" "ttl" {
  name = var.ttl
}

resource "digitalocean_domain" "domain" {
  name       = var.tl_domain
}

resource "digitalocean_record" "gophish_hostname" {
  domain = digitalocean_domain.domain.name
  type   = "A"
  name   = var.gophish_hostname
  value  = digitalocean_droplet.phish_droplet.ipv4_address
}

resource "digitalocean_record" "gpadmin_hostname" {
  domain = digitalocean_domain.domain.name
  type   = "A"
  name   = var.gpadmin_hostname
  value  = digitalocean_droplet.phish_droplet.ipv4_address
}

resource "digitalocean_ssh_key" "ansible_ssh_key" {
  name       = "Ansible SSH Key ${var.op}"
  public_key = var.ansible_ssh_key
}

resource "digitalocean_droplet" "phish_droplet" {
  image = var.do_img
  name = var.do_name
  region = var.do_region
  size = var.do_size
  tags = [digitalocean_tag.op_number.id, digitalocean_tag.ttl.id]
  private_networking = true
  ssh_keys = [
    digitalocean_ssh_key.ansible_ssh_key.fingerprint
  ]
  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    agent = false
    timeout = "3m"
    private_key = var.ansible_ssh_key_private
  }
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update",
      "sudo adduser --disabled-password --gecos '' ansible",
      "sudo mkdir -p /home/ansible/.ssh",
      "sudo touch /home/ansible/.ssh/authorized_keys",
      "sudo echo '${var.ansible_ssh_key}' > authorized_keys",
      "sudo mv authorized_keys /home/ansible/.ssh",
      "sudo chown -R ansible:ansible /home/ansible/.ssh",
      "sudo chmod 700 /home/ansible/.ssh",
      "sudo chmod 600 /home/ansible/.ssh/authorized_keys",
      "sudo usermod -aG sudo ansible",
      "sudo echo 'ansible ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers"
    ]
  }
}