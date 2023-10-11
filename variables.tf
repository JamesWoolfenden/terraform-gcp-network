variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "region" {
  type = string
}

variable "name" {
  type = string
}

variable "secondary_ip_range" {
  default = null
}


variable "ip_cidr_range" {
  type = string
}
