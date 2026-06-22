resource "google_compute_network" "vpc" {
  name                            = var.name
  auto_create_subnetworks         = false
  delete_default_routes_on_create = true
}

resource "google_compute_router" "vpc" {
  name    = "${var.name}-router"
  region  = var.region
  network = google_compute_network.vpc.name
}

resource "google_compute_router_nat" "vpc" {
  name                               = "${var.name}-nat"
  region                             = var.region
  router                             = google_compute_router.vpc.name
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
