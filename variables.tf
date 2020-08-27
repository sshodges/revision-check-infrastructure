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
  description = "Name of the application"
  type        = list
}

variable "public_subnet_cidrs" {
  description = "Environment name: dev, stge, test, prod"
  type        = list
}

variable "availability_zones" {
  description = "VPC CIDR Block type"
  type        = list
}

variable "app_port" {
  description = "VPC CIDR Block type"
}

variable "fargate_cpu" {
  default     = 256
  description = "VPC CIDR Block type"
}

variable "fargate_memory" {
  default     = 512
  description = "VPC CIDR Block type"
}

variable "launch_type" {
  default     = "FARGATE"
  description = "VPC CIDR Block type"
}
