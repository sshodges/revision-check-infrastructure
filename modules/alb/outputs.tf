output "id" {
  value       = aws_alb.this.id
  description = "ALB ID"
}
output "target_id" {
  value       = aws_alb_target_group.this.id
  description = "ALB Target Group ID"
}
output "alb_listener" {
  value       = aws_alb_listener.this
  description = "ALB Listener"
}
