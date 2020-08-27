output "vpc_id" {
  value       = module.vpc.id
  description = "VPC id"
}

output "private_subnet_ids" {
  value       = module.private_subnet.ids
  description = "Private subnet IDS"
}
