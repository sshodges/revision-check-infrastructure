output "name" {
  value       = aws_iam_role.this.name
  description = "IAM Role Name"
}

output "arn" {
  value       = aws_iam_role.this.arn
  description = "IAM Role ARN"
}
