# output "pre-prod_account_id" {
#   description = "ID of the AWS pre-prod_account"
#   value       = module.aws_organization.pre-prod_account_id[length(module.aws_organization.pre-prod_account_id) - 1].id
# }

# output "prod_account_id" {
#   description = "ID of the AWS prod_account"
#   value       = module.aws_organization.prod_account_id[length(module.aws_organization.prod_account_id) - 1].id
# }

# output "output_test_id_preprod" {
#   description = "ID of the AWS preprod_unit"
#   value       = module.aws_organization.preprod_output_test_id[length(module.aws_organization.preprod_output_test_id) - 1].id
# }

# output "output_test_id_prod" {
#   description = "ID of the AWS prod_unit"
#   value       = module.aws_organization.preprod_output_test_id[length(module.aws_organization.prod_output_test_id) - 1].id
# }