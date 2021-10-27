include {
  path = find_in_parent_folders()
}
##########################################################
# Resources in other account, separate state file with different branch

#trigger --> python to add policy --> apply updated policy
# Test1 apply policy to bucket
terraform {
  source = "../src"
}


inputs = {




  trusted_role_arns = [
    "arn:aws:iam::111111111:role/AWSCloudFormationStackSetAdministrationRole"

  ]

  create_role = true

  role_name         = "TestRole-TF"
  


  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"

  ]
  number_of_custom_role_policy_arns = 1
}
