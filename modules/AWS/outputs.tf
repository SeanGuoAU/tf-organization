# output "pre-prod_account_id" {
#   description = "ID of the AWS pre-prod_account"
#   value       = aws_organizations_account.pre-prod_account
# }

# output "prod_account_id" {
#   description = "ID of the AWS prod_account"
#   value       = aws_organizations_account.prod_account
# }

output "preprod_output_test_id" {
  description = "ID of the AWS preprod_unit"
  value       = aws_organizations_organizational_unit.layer_3_1
}

output "prod_output_test_id" {
  description = "ID of the AWS prod_unit"
  value       = aws_organizations_organizational_unit.layer_3_2
}