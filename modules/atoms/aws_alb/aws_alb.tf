resource "aws_alb" "this" {
  name            = var.app_name
  subnets         = var.subnets_ids
  security_groups = [var.security_group_ids]
}
