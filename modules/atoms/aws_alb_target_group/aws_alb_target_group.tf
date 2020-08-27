resource "aws_alb_target_group" "this" {
  name        = var.app_name
  port        = var.app_port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

}
