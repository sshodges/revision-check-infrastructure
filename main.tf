provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/molecules/network"

  app_name             = format("%s-%s", var.environment, var.app_name)
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "security" {
  source = "./modules/molecules/security"

  app_name    = format("%s-%s", var.environment, var.app_name)
  environment = var.environment
  vpc_id      = module.network.vpc_id
  app_port    = var.app_port

}


