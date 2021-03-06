provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/network"

  app_name             = format("%s-%s", var.environment, var.app_name)
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "security" {
  source = "./modules/security"

  app_name    = format("%s-%s", var.environment, var.app_name)
  environment = var.environment
  vpc_id      = module.network.vpc_id
  app_port    = var.app_port
}

module "role" {
  source = "./modules/role"

  app_name = format("%s-%s", var.environment, var.app_name)
}

module "alb" {
  source = "./modules/alb"

  app_name           = format("%s-%s", var.environment, var.app_name)
  subnets_ids        = module.network.private_subnet_ids
  security_group_ids = module.security.load_balancer_id
  app_port           = var.app_port
  vpc_id             = module.network.vpc_id
}


module "ecs" {
  source = "./modules/ecs"

  app_name                    = format("%s-%s", var.environment, var.app_name)
  environment                 = var.environment
  app_port                    = var.app_port
  fargate_cpu                 = var.fargate_cpu
  fargate_memory              = var.fargate_memory
  aws_region                  = var.aws_region
  ecs_task_execution_role_arn = module.role.iam_arn
  ecs_task_execution_role     = module.role
  launch_type                 = var.launch_type
  alb_target_id               = module.alb.target_id
  alb_listener                = module.alb.alb_listener
  security_group_id           = module.security.ecs_tasks_id
  subnet_ids                  = module.network.private_subnet_ids
}


