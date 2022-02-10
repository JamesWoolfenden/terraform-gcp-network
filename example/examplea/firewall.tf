resource "google_compute_firewall" "ssh-fw" {
  name          = "sshfw"
  network       = module.network.vpc.name
  project       = "bridgecrew-project-test"
  source_ranges = ["8.8.8.8/32"]
  allow {
    protocol = "tcp"
    ports    = ["22"]

  }

}
