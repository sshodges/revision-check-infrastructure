resource "aws_ecs_service" "this" {
  name            = var.app_name
  cluster         = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count   = var.app_count
  launch_type     = var.launch_type

  network_configuration {
    security_groups  = [var.security_group_id]
    subnets          = var.subnet_ids
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = alb_target_id
    container_name   = var.app_name
    container_port   = var.app_port
  }

  # depends_on = [aws_alb_listener.front_end, aws_iam_role_policy_attachment.ecs_task_execution_role]
}
