output "vpc_id" {
  value = join("", aws_vpc.test.*.id)
}
output "aws_eip" {
  value = join("", aws_subnet.test.*.id)
}
output "aws_key_pair" {
  value       = join("", aws_key_pair.test.*.key_name)
  description = "Name of SSH key."
}