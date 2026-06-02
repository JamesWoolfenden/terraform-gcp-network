variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "secondary_ip_range" {
  default = null
}
