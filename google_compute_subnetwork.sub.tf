resource "google_compute_subnetwork" "sub" {
  #checkov:skip=CKV_GCP_76
  name               = local.subnet_name
  ip_cidr_range      = var.ip_cidr_range
  region             = var.region
  network            = google_compute_network.vpc.self_link
  secondary_ip_range = var.secondary_ip_range
  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
  private_ip_google_access = true
}
