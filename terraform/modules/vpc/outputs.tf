output "vpc" {
  value       = data.aws_vpc.default
  description = "VPC"
}

output "subnets" {
  value       = data.aws_subnets.default
  description = "Subnets"
}
