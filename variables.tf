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
variable "subnet2_tags" {
  type = map(any)
  default = {}
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