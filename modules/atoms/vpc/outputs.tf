output "id" {
  value       = aws_vpc.this.id
  description = "VPC id"
}

output "cidr_block" {
  value       = aws_vpc.this.cidr_block
  description = "CIDR block type"
}


