output "subnet" {
  value = google_compute_subnetwork.sub
}

output "vpc" {
  value = google_compute_network.vpc
}


output "firewall" {
  value = google_compute_firewall.pike
}