variable "name" {
  type        = string
  description = "Name of the network or resource (non-empty)"

  validation {
    condition     = length(var.name) > 0
    error_message = "The variable 'name' must not be empty."
  }
}

variable "region" {
  type        = string
  description = "GCP region (e.g. us-central1)"

  validation {
    condition     = length(var.region) > 0
    error_message = "The variable 'region' must not be empty."
  }
}

variable "ip_cidr_range" {
  type        = string
  description = "Primary CIDR range in CIDR notation (e.g. 10.0.0.0/16)"

  validation {
    condition     = can(cidrnetmask(var.ip_cidr_range))
    error_message = "The variable 'ip_cidr_range' must be a valid CIDR (e.g. 10.0.0.0/16)."
  }
}
