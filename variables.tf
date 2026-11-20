variable "name" {
  description = "Name prefix for all resources in this module."
  type        = string
  validation {
    condition     = can(regex("^[a-z]([-a-z0-9]*[a-z0-9])?$", var.name)) && length(var.name) <= 52
    error_message = "name must be a lowercase RFC1035 label (a-z, 0-9, -) of at most 52 characters, as suffixes such as -subnetwork are appended."
  }
}

variable "region" {
  description = "GCP region for the subnet."
  type        = string
  validation {
    condition     = length(var.region) > 0
    error_message = "region must not be empty."
  }
}

variable "ip_cidr_range" {
  description = "Primary CIDR range for the subnet (e.g. 10.128.0.0/20)."
  type        = string
  validation {
    condition     = can(cidrnetmask(var.ip_cidr_range))
    error_message = "ip_cidr_range must be a valid CIDR block."
  }
}

variable "secondary_ip_range" {
  description = "Optional list of secondary IP ranges for the subnet (e.g. for GKE pods/services)."
  type = list(object({
    range_name    = string
    ip_cidr_range = string
  }))
  default = null
  validation {
    condition     = var.secondary_ip_range == null || alltrue([for r in var.secondary_ip_range : can(cidrnetmask(r.ip_cidr_range))])
    error_message = "All secondary_ip_range entries must have a valid CIDR block."
  }
}

variable "additional_internal_source_ranges" {
  description = "Extra CIDR ranges (e.g. peered VPCs or on-prem) allowed full internal access, on top of the subnet's own primary and secondary ranges."
  type        = list(string)
  default     = []
  validation {
    condition     = alltrue([for c in var.additional_internal_source_ranges : can(cidrnetmask(c)) && c != "0.0.0.0/0"])
    error_message = "additional_internal_source_ranges must contain valid IPv4 CIDR blocks and must not contain 0.0.0.0/0."
  }
}
