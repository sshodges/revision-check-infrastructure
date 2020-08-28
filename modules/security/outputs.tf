output "ecs_tasks_id" {
  value = aws_security_group.ecs_tasks.id
}
output "load_balancer_id" {
  value = aws_security_group.load_balancer_security.id
}
