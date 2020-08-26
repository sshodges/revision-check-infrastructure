resource "aws_security_group" "this" {

  name   = var.app_name
  vpc_id = var.vpc_id

  ingress {
    protocol        = "tcp"
    from_port       = var.app_port
    to_port         = var.app_port
    security_groups = var.security_id
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = var.app_name
    Environment = var.environment
  }
}
