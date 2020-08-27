module "aws_iam_role" {
  source = "../../atoms/aws_iam_role"

  app_name = var.app_name
}

module "aws_iam_role_policy_attachment" {
  source = "../../atoms/aws_iam_role_policy_attachment"

  role_name = module.aws_iam_role.name
}




