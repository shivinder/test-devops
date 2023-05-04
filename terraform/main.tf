provider "digitalocean" {
  access_token = var.access_token
}

resource "digitalocean_droplet" "jenkins" {
  name = "jenkins"
  region = var.region
  size = var.size
  image = "ubuntu-20-04"
  ssh_keys = [var.ssh_key_fingerprint]

  provisioner "remote-exec" {
    inline = [
      "apt update",
      "apt install -y jenkins",
      "systemctl enable jenkins",
      "systemctl start jenkins",
    ]
  }
}

resource "digitalocean_firewall" "jenkins" {
  name = "jenkins"
  droplet_ids = [digitalocean_droplet.jenkins.id]
  inbound_rules = [
    {
      protocol = "tcp"
      port_range = "8080"
    }
  ]
}

output "jenkins_ip" {
  value = digitalocean_droplet.jenkins.ipv4_address
}