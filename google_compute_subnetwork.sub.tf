resource "google_compute_subnetwork" "sub" {
  #checkov:skip=CKV_GCP_76
  name          = local.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc.self_link
  dynamic "secondary_ip_range" {
    for_each = var.secondary_ip_range != null ? var.secondary_ip_range : []
    content {
      range_name    = secondary_ip_range.value.range_name
      ip_cidr_range = secondary_ip_range.value.ip_cidr_range
    }
  }
  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
  private_ip_google_access = true
}
