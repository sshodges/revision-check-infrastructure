variable "app_name" {
  description = "The name of the application"
}

variable "cluster_id" {
  description = ""
}

variable "app_count" {
  default     = 1
  description = ""
}

variable "launch_type" {
  description = ""
}

variable "subnet_ids" {
  description = ""
}

variable "security_group_id" {
  description = ""
}

variable "alb_target_id" {
  description = ""
}

variable "app_port" {
  description = ""
}

variable "task_definition_arn" {
  description = ""
}
