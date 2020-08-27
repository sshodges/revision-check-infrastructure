module "alb" {
  source = "../../atoms/aws_alb"

  app_name           = var.app_name
  subnets_ids        = var.subnets_ids
  security_group_ids = var.security_group_ids
}

module "alb_target_group" {
  source = "../../atoms/aws_alb_target_group"

  app_name = var.app_name
  vpc_id   = var.vpc_id
  app_port = var.app_port
}

module "alb_listener" {
  source = "../../atoms/aws_alb_listener"

  app_name        = var.app_name
  aws_alb_id      = module.alb.id
  app_port        = 80
  target_group_id = module.alb_target_group.id
}





