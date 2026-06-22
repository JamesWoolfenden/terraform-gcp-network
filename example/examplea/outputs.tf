output "subnet" {
  description = "The subnet resource outputs from the network module"
  value       = module.network.subnet
}

output "vpc" {
  description = "The VPC resource outputs from the network module"
  value       = module.network.vpc
}

output "firewall" {
  description = "The firewall rules outputs from the network module"
  value       = module.network.firewall
}
