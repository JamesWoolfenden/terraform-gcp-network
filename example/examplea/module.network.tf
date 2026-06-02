# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "network" {
  source        = "../../"
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
}
