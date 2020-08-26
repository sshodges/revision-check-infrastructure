resource "aws_internet_gateway" "this" {
  vpc_id = var.aws_vpc_id

  tags = {
    Name        = var.app_name
    Environment = var.environment
  }
}
