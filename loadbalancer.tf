resource "digitalocean_loadbalancer" "lb" {
	depends_on = [var.lb_depends_on]

	name   = var.name
  region = var.region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = var.droplet_ids
}

