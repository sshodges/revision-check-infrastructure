variable "app_name" {}

variable "environment" {}

variable "app_port" {}

variable "fargate_cpu" {}

variable "fargate_memory" {}

variable "aws_region" {}

variable "ecs_task_execution_role_arn" {}

variable "security_group_id" {}

variable "subnet_ids" {}

variable "launch_type" {}

variable "alb_target_id" {}

variable "app_count" {
  default = 1
}

variable "alb_listener" {}
