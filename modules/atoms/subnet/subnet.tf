resource "aws_subnet" "this" {
  vpc_id                  = var.vpc_id
  cidr_block              = element(var.cidrs, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  count                   = length(var.cidrs)
  map_public_ip_on_launch = var.public

  tags = {
    Name        = "${var.name}_${element(var.availability_zones, count.index)}"
    Environment = var.environment
  }
}
