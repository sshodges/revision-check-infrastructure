output "vpc_id" {
  value       = aws_vpc.this.id
  description = "VPC id"
}

output "private_subnet_ids" {
  value       = "${aws_subnet.this.*.id}"
  description = "Private subnet IDS"
}
