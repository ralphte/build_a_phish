## The phish inventory file
resource "local_file" "GophishInventory" {
 content = templatefile("phish_inventory.tmpl",
 {
  gophish-dns = digitalocean_droplet.gophish_droplet.name,
  gophish-ip = digitalocean_droplet.gophish_droplet.ipv4_address,
  gophish-id = digitalocean_droplet.gophish_droplet.id,
 }
 )
 filename = "../../inventory/digital_ocean_gophish"
}