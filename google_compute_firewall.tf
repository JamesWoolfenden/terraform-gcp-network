resource "google_compute_firewall" "internal" {
  name    = "${var.name}-allow-internal"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = local.internal_source_ranges

  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
