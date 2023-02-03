#####################TEST############
#####################TEST############


resource "aws_vpc" "test" {
  count = var.enabled_vpc ? 1 : 0
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags = var.vpc_tags
}
resource "aws_subnet" "test" {
  count = var.enabled_subnet ? 1 : 0
  vpc_id     = join("", aws_vpc.test.*.id)
  cidr_block  = var.cidr1
  tags = var.subnet_tags
}



resource "aws_internet_gateway" "test" {
  count = var.enabled_internet_gateway ? 1 : 0
  vpc_id = join("", aws_vpc.test.*.id)
  tags = var.gateway_tags
}

resource "aws_route_table" "test" {
  count = var.enabled_route_table ? 1 : 0
  vpc_id = join("", aws_vpc.test.*.id)

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = join("", aws_internet_gateway.test.*.id)
  }
}
resource "aws_route_table_association" "test" {
  subnet_id      = join("", aws_subnet.test.*.id)
  route_table_id = join("", aws_route_table.test.*.id)

}
resource "aws_key_pair" "test" {
  count = var.enable_key_pair == true ? 1 : 0

  key_name   = var.test_id
  public_key = var.public_key == "" ? file(var.key_path) : var.public_key
  tags       = var.test_tags
}
resource "aws_instance" "test" {
  ami           = var.ami
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id = join("", aws_subnet.test.*.id)
  key_name = join("", aws_key_pair.test.*.id)
  instance_type = var.instance_type

  tags = {
    Name = "test"
  }
}

