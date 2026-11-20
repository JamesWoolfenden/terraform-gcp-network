# delete_default_routes_on_create removes the auto-created 0.0.0.0/0 route.
# Cloud NAT and Private Google Access both need a route whose next hop is the
# default internet gateway, so add it back explicitly. Instances without an
# external IP egress through Cloud NAT via this route.
resource "google_compute_route" "egress" {
  name             = "${var.name}-egress"
  network          = google_compute_network.vpc.self_link
  dest_range       = "0.0.0.0/0"
  next_hop_gateway = "default-internet-gateway"
  priority         = 1000
}
