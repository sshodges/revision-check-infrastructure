variable "vpc_cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
}

variable "app_name" {
  description = "The name of the application"
}

variable "environment" {
  description = "The name of the environment"
}

variable "private_subnet_cidrs" {
  type        = list
  description = "List of private cidrs, for every avalibility zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}

variable "public_subnet_cidrs" {
  type        = list
  description = "List of public cidrs, for every avalibility zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}

variable "availability_zones" {
  type        = list
  description = "List of avalibility zones you want. Example: eu-west-1a and eu-west-1b"
}
