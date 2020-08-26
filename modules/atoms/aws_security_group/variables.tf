variable "app_name" {
  description = "The name of the application"
}

variable "environment" {
  description = "The name of the environment"
}

variable "vpc_id" {
  description = "List of private cidrs, for every avalibility zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}

variable "app_port" {
  description = "List of private cidrs, for every avalibility zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}

variable "security_id" {
  default     = []
  description = "List of avalibility zones you want. Example: eu-west-1a and eu-west-1b"
}
