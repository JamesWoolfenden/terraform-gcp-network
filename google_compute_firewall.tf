resource "google_compute_firewall" "pike" {
  name    = var.name
  network = google_compute_network.vpc.name
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  source_tags = ["web"]
}