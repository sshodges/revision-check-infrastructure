module "load_balancer_security" {
  source = "../../atoms/aws_security_group"

  app_name     = "load_balancer_security_${var.app_name}"
  environment  = var.environment
  vpc_id       = var.vpc_id
  app_port1    = 80
  cidr_blocks1 = ["0.0.0.0/0"]
  app_port2    = 80
  cidr_blocks2 = ["0.0.0.0/0"]

}

module "ecs_tasks" {
  source = "../../atoms/aws_security_group"

  app_name     = "ecs_tasks_${var.app_name}"
  environment  = var.environment
  vpc_id       = var.vpc_id
  app_port1    = 80
  cidr_blocks1 = ["0.0.0.0/0"]
  app_port2    = var.app_port
  cidr_blocks2 = ["0.0.0.0/0"]
}




