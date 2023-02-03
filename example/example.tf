#####################TEST############
#####################TEST############


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

  gateway_tags = {
    tag = "test"
  }
  key_name        = "test"
  enable_key_pair = true
  public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBysZHann2is1WbW+4lNou1p2OxFDlxKDm79XbrS+PLvqRBpz7xPJDjJwO20XUqi6PZ1K9g9hC/KBRTxzu0bCjtLjYo0ZNLC0L3HP3XGhsI/fYsy69w9X4jABVv+1cD4Mpvp+cxF5dstvOQY+C/BZI1ZzgBOPDTxvKizCHOlVVPaCcVLNaAOjEPIX3dG3QFZbflu2td3AVnOmEHrrEwND6+wirEuQLBfMFoaYfPoj3J0M1pELuHvJE3rEaE8x4E7jX3bKJs5K2XJWO1ekxfTKoexv/arIlS1mnOXbsoXp3kcMRmWUZY2bXTcXXjk00V+9n8rAmeUtJv7wWR7gdi2R/9id3P+3RPZAT6HiLc0gc/irLEvhSAHBdCoGz1Sd+lFUiMc0T+nNoMueAnjxhQUSDlYER00KY2pzUOBtu2IdH/sia84pAi33brl8PKS9bwOA24mwJpuJ2DD6B0KT5V9Npc3PRSxul7P0CPGYnaMdMhPmIYML+hn2ptl3VHcK1fps= suresh@suresh"
  ami                         = "ami-0dae3a932d090b3de"
  associate_public_ip_address = true
  instance_type               = "t3.micro"

}

