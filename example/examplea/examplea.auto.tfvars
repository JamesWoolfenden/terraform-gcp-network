common_tags = {
  createdby = "terraform"
module = "terraform-gcp-network" }

region        = "us-east1"
project       = "examplea-304315"
name          = "examplea"
ip_cidr_range = "10.128.0.0/16"
secondary_ip_range = [{
  ip_cidr_range = "192.168.10.0/24"
range_name = "tf-test-secondary-range-update1" }]
