locals {
  subnet_name = "${var.name}-subnetwork"

  # Only the subnet's own primary and secondary ranges are trusted by default;
  # consumers opt in to wider (peered / on-prem) ranges explicitly.
  internal_source_ranges = distinct(concat(
    [var.ip_cidr_range],
    [for r in coalesce(var.secondary_ip_range, []) : r.ip_cidr_range],
    var.additional_internal_source_ranges,
  ))
}
