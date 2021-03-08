output "subnet" {
  value = google_compute_subnetwork.sub
}

output "vpc" {
  value = google_compute_network.vpc_network
}
