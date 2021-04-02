## The phish inventory file
resource "local_file" "PhishInventory" {
 content = templatefile("phish_inventory.tmpl",
 {
  phish-dns = digitalocean_droplet.phish_droplet.name,
  phish-ip = digitalocean_droplet.phish_droplet.ipv4_address,
  phish-id = digitalocean_droplet.phish_droplet.id,
 }
 )
 filename = "../../inventory/digital_ocean_phish"
}