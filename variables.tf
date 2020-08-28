variable "aws_region" {
  description = "The AWS region things are created in"
  type        = string
}

variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "environment" {
  description = "Environment name: dev, stge, test, prod"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block type"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "CIDRS of private subnet"
  type        = list
}


variable "availability_zones" {
  description = "List of availablility zones"
  type        = list
}

variable "app_port" {
  description = "Port the app is run on, eg 5000"
}

variable "fargate_cpu" {
  default     = 256
  description = "Provisioned Fargate CPU"
}

variable "fargate_memory" {
  default     = 512
  description = "Provisioned Fargate memory"
}

variable "launch_type" {
  default     = "FARGATE"
  description = "ECS and Task Def launch type"
}
