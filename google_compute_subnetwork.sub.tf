resource "google_compute_subnetwork" "sub" {
  name               = "${var.name}-subnetwork"
  ip_cidr_range      = var.ip_cidr_range
  region             = var.region
  network            = google_compute_network.vpc.self_link
  secondary_ip_range = var.secondary_ip_range
}
