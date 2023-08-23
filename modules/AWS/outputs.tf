output "pre-prod_account_id" {
  description = "ID of the AWS pre-prod_account"
  value       = aws_organizations_account.pre-prod_account
}

output "prod_account_id" {
  description = "ID of the AWS prod_account"
  value       = aws_organizations_account.prod_account
}