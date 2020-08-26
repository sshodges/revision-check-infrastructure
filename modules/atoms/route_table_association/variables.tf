variable "subnet_ids" {
  description = "The name of the application"
}

variable "route_table_ids" {
  description = "The name of the environment"
}

variable "length" {
  description = "List of private cidrs, for every avalibility zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}
