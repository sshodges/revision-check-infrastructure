resource "aws_iam_role_policy_attachment" "this" {
  role       = var.role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
