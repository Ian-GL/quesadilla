variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "quesadilla_app" {
  image  = "ubuntu-18-04-x64"
  name   = "quesadilla"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  user_data = templatefile("./cloud_init.tpl", {})
}

output "instance_ip_addr" {
  value = digitalocean_droplet.quesadilla_app.ipv4_address
}
