resource "aws_alb_listener" "front_end" {
  load_balancer_arn = var.aws_alb_id
  port              = var.app_port
  protocol          = "HTTP"

  default_action {
    target_group_arn = var.target_group_id
    type             = "forward"
  }
}
