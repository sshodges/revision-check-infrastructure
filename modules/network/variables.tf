variable "vpc_cidr" {}

variable "app_name" {}

variable "environment" {}

variable "private_subnet_cidrs" {
  type = list
}

variable "availability_zones" {
  type = list
}
