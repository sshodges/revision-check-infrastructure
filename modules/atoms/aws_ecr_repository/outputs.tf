output "url" {
  value       = aws_ecr_repository.this.repository_url
  description = "ECR Repository URL"
}
