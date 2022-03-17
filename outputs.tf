output "default_vpc_id" {
  description = "The ID of the Default VPC"
  value       = data.aws_vpc.def_vpc.id
}
output "default_vpc_CIDR" {
  description = "The CIDR of the Default VPC"
  value       = [for s in data.aws_subnet.example : s.cidr_block]
}
output "default_security_groups" {
  value       = data.aws_security_groups.default.ids
}