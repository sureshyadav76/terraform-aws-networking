output "vpc_id" {
  value = join("", aws_vpc.test.*.id)
}
output "aws_eip" {
  value = join("", aws_subnet.test2.*.id)
}