module "vpc" {
  source = "../../atoms/vpc"

  app_name    = var.app_name
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}

module "internet_gateway" {
  source = "../../atoms/internet_gateway"

  aws_vpc_id  = module.vpc.id
  app_name    = var.app_name
  environment = var.environment
}

# Create Private Subnet and route table
module "private_subnet" {
  source = "../../atoms/subnet"

  name               = var.app_name
  environment        = var.environment
  vpc_id             = module.vpc.id
  cidrs              = var.private_subnet_cidrs
  availability_zones = var.availability_zones
}

module "private_route_table" {
  source = "../../atoms/route_table"

  name        = var.app_name
  environment = var.environment
  vpc_id      = module.vpc.id
  igw         = module.internet_gateway.igw
}

module "private_route_table_association" {
  source = "../../atoms/route_table_association"

  subnet_ids     = module.private_subnet.ids
  route_table_id = module.private_route_table.id
  length         = length(var.private_subnet_cidrs)
}


