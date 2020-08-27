variable "app_name" {
  description = "The name of the application"
}

variable "environment" {
  description = "The name of the environment"
}

variable "repository_url" {
  description = ""
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

variable "launch_type" {
  description = ""
}
