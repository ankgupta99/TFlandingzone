module "Test_Role" {
  source = "./modules/iam-assumable-role"


  trusted_role_arns = var.trusted_role_arns

  create_role = var.create_role

  role_name         = var.role_name
  role_requires_mfa = false


  custom_role_policy_arns = var.custom_role_policy_arns
  number_of_custom_role_policy_arns = var.number_of_custom_role_policy_arns
}