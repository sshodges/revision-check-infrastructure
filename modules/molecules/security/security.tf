module "load_balancer_security" {
  source = "../../atoms/aws_security_group"

  app_name    = var.app_name
  environment = var.environment
  vpc_id      = var.vpc_id
  app_port    = var.app_port
}

module "ecs_tasks" {
  source = "../../atoms/aws_security_group"

  app_name    = var.app_name
  environment = var.environment
  vpc_id      = var.vpc_id
  app_port    = var.app_port
  security_id = [module.load_balancer_security.id]
}




