output "pre-prod_account_id" {

  description = "ID of the AWS pre-prod_account"
  value       = module.aws_organization.pre-prod_account_id[length(module.aws_organization.pre-prod_account_id) - 1].id
}

output "prod_account_id" {

  description = "ID of the AWS prod_account"
  value       = module.aws_organization.prod_account_id[length(module.aws_organization.prod_account_id) - 1].id
}