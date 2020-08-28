resource "aws_alb" "this" {
  name            = var.app_name
  subnets         = var.subnets_ids
  security_groups = [var.security_group_ids]
}

resource "aws_alb_target_group" "this" {
  name        = var.app_name
  port        = var.app_port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"
}

resource "aws_alb_listener" "this" {
  load_balancer_arn = aws_alb.this.id
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.this.id
    type             = "forward"
  }
}





