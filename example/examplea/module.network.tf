module "network" {
  source        = "../../"
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  common_tags   = var.common_tags
  project       = var.project
}
