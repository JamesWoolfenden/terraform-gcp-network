variable "name" {
  description = "Name prefix for all resources in this module."
  type        = string
  validation {
    condition     = length(var.name) > 0
    error_message = "name must not be empty."
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

variable "labels" {
  description = "Labels to apply to all resources created by this module."
  type        = map(string)
  default     = {}
  validation {
    condition     = alltrue([for k in keys(var.labels) : can(regex("^[a-z0-9_-]+$", k))])
    error_message = "All label keys must match ^[a-z0-9_-]+$."
  }
}
