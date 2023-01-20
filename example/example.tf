provider "aws" {
  region = "ca-central-1"
}

module "aws_vpc" {
  source = "./.././"
  cidr_block = "10.10.0.0/22"
  instance_tenancy = "default"
  enabled_vpc = true
  enabled_route_table = true
  enabled_internet_gateway = true
  enabled_subnet = true
  vpc_tags = {
    created_by = "test"
  }

  subnet_tags = {
    tag = "test"
  }
  cidr1 = "10.10.0.0/24"
  cidr2 = "10.10.2.0/24"
  subnet2_tags = {
    tag = "test"
  }
  gateway_tags = {
    tag = "test"
  }

}

