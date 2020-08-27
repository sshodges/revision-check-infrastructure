resource "aws_security_group" "this" {

  name   = var.app_name
  vpc_id = var.vpc_id

  lifecycle {
    create_before_destroy = true
  }

  ingress {
    protocol    = "tcp"
    from_port   = var.app_port1
    to_port     = var.app_port1
    cidr_blocks = var.cidr_blocks1
  }

  ingress {
    protocol    = "tcp"
    from_port   = var.app_port2
    to_port     = var.app_port2
    cidr_blocks = var.cidr_blocks2
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
