variable "app_name" {
  description = "The name of the application"
}

variable "environment" {
  description = "The name of the environment"
}

variable "app_port" {
  description = ""
}

variable "fargate_cpu" {
  description = ""
}

variable "fargate_memory" {
  description = ""
}

variable "aws_region" {
  description = ""
}

variable "ecs_task_execution_role_arn" {
  description = ""
}

variable "security_group_id" {
  description = ""
}

variable "subnet_ids" {
  description = ""
}

variable "launch_type" {
  description = ""
}

variable "alb_target_id" {
  description = ""
}

variable "app_count" {
  default     = 1
  description = ""
}

