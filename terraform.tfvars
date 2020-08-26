aws_region           = "ap-southeast-2"
app_name             = "revision_check_api"
environment          = "dev"
vpc_cidr             = "10.0.0.0/16"
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_cidrs  = ["10.0.2.0/24"]
availability_zones   = ["ap-southeast-2a", "ap-southeast-2b"]
app_port             = 5000
