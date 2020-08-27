resource "aws_route_table_association" "subnet" {
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = var.route_table_id
  count          = var.length
}
