resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name        = var.app_name
    Environment = var.environment
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name        = var.app_name
    Environment = var.environment
  }
}

resource "aws_subnet" "this" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)
  count             = length(var.private_subnet_cidrs)

  tags = {
    Name        = "${var.app_name}_${element(var.availability_zones, count.index)}"
    Environment = var.environment
  }
}

resource "aws_route_table" "this" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name        = "${var.app_name}"
    Environment = var.environment
  }
}

resource "aws_route_table_association" "subnet" {
  subnet_id      = element("${aws_subnet.this.*.id}", count.index)
  route_table_id = aws_route_table.this.id
  count          = length(var.private_subnet_cidrs)
}
