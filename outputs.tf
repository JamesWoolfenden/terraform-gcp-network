output "subnet" {
  description = "The google_compute_subnetwork resource."
  value       = google_compute_subnetwork.sub
}

output "vpc" {
  description = "The google_compute_network resource."
  value       = google_compute_network.vpc
}

output "firewall" {
  description = "The google_compute_firewall resource."
  value       = google_compute_firewall.pike
}
