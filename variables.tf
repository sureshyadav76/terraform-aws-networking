variable "cidr_block" {
  type = string
  default = ""
}
variable "instance_tenancy" {
  type = string
  default = ""
}
variable "vpc_tags" {
  type = map(any)
  default = {}
}
variable "cidr1" {
  type = string
  default = ""
}
variable "subnet_tags" {
  type = map(any)
  default = {}
}
variable "cidr2" {
  type = string
  default = ""
}


variable "gateway_tags" {
  type = map(any)
  default = {}
}

variable "enabled_vpc" {
  type = bool
  default = true
}
variable "enabled_internet_gateway" {
  type = bool
  default = true
}
variable "enabled_route_table" {
  type = bool
  default = true
}
variable "enabled_subnet" {
  type = bool
  default = true
}
variable "cidr_block3" {
  type = string
  default = ""
}
variable "my_route_table" {
  type = bool
  default = true

}
variable "tags_rote" {
  type = map(any)
  default = {}
}
variable "public_key" {
  type        = string
  default     = ""
  description = "Name  (e.g. `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBysZHann2is1WbW+4lNou1p2OxFDlxKDm79XbrS+PLvqRBpz7xPJDjJwO20XUqi6PZ1K9g9hC/KBRTxzu0bCjtLjYo0ZNLC0L3HP3XGhsI/fYsy69w9X4jABVv+1cD4Mpvp+cxF5dstvOQY+C/BZI1ZzgBOPDTxvKizCHOlVVPaCcVLNaAOjEPIX3dG3QFZbflu2td3AVnOmEHrrEwND6+wirEuQLBfMFoaYfPoj3J0M1pELuHvJE3rEaE8x4E7jX3bKJs5K2XJWO1ekxfTKoexv/arIlS1mnOXbsoXp3kcMRmWUZY2bXTcXXjk00V+9n8rAmeUtJv7wWR7gdi2R/9id3P+3RPZAT6HiLc0gc/irLEvhSAHBdCoGz1Sd+lFUiMc0T+nNoMueAnjxhQUSDlYER00KY2pzUOBtu2IdH/sia84pAi33brl8PKS9bwOA24mwJpuJ2DD6B0KT5V9Npc3PRSxul7P0CPGYnaMdMhPmIYML+hn2ptl3VHcK1fps= suresh@suresh`)."
  sensitive   = true
}

variable "key_path" {
  type        = string
  default     = ""
  description = "Name  (e.g. `~/.ssh/id_rsa.pub`)."
}

variable "key_name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `it-admin` or `devops`)."
}

variable "enable_key_pair" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable key pair."
}
variable "test_id" {
  type = string
  default = ""
}
variable "test_tags" {
  type = map(string)
  default = {}
}
variable "ami" {
  type = string
  default = ""
}
variable "associate_public_ip_address" {
  type = string
  default = ""
}
variable "instance_type" {
  type = string
  default = ""
}
variable "tags" {
  type = map(string)
  default = {}
}
