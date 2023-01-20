


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

resource "aws_subnet" "test2" {
  vpc_id     = join("", aws_vpc.test.*.id)
  cidr_block = var.cidr2
  tags = var.subnet2_tags
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
  subnet_id1     =  join("", aws_subnet.test2.*.id)
  route_table_id = join("", aws_route_table.test.*.id)

}

