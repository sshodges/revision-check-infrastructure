module "ecs_cluster" {
  source = "../../atoms/aws_ecs_cluster"

  app_name = var.app_name
}

module "ecr_repository" {
  source = "../../atoms/aws_ecr_repository"

  app_name = var.app_name
}

module "ecs_task_def" {
  source = "../../atoms/aws_ecs_task_definition"

  app_name                    = var.app_name
  environment                 = var.environment
  repository_url              = module.ecr_repository.url
  app_port                    = var.app_port
  fargate_cpu                 = var.fargate_cpu
  fargate_memory              = var.fargate_memory
  aws_region                  = var.aws_region
  ecs_task_execution_role_arn = var.ecs_task_execution_role_arn
  launch_type                 = var.launch_type
}

module "ecs_service" {
  source = "../../atoms/aws_ecs_service"

  app_name            = var.app_name
  cluster_id          = module.ecs_cluster.id
  app_count           = var.app_count
  launch_type         = var.launch_type
  security_group_id   = var.security_group_id
  subnet_ids          = var.subnet_ids
  alb_target_id       = var.fargate_memory
  app_port            = var.app_port
  task_definition_arn = module.ecs_task_def.arn
}

