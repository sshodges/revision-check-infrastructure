resource "aws_route_table_association" "subnet" {
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = element(var.route_table_ids, count.index)
  count          = var.length
}
