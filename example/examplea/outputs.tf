output "subnet" {
  value = module.network.subnet
}

output "vpc" {
  value = module.network.vpc
}

output "firewall" {
  value = google_compute_firewall.ssh-fw
}
