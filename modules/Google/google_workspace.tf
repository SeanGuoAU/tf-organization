################################################## google_workspace
resource "googleworkspace_group" "clients" {
  # count = length(var.email_prefix)
  email = "aws_client_accounts@seanguostudio.click"
  #   name        = "Sales"
  #   description = "Sales Group"
  aliases = concat([for project in var.project : lower("${var.email_prefix[0]}_${project}${var.email_suffix}")], [for project in var.project : lower("${var.email_prefix[1]}_${project}${var.email_suffix}")])

  #   timeouts {
  #     create = "1m"
  #     update = "1m"
  #   }
}

# locals {
#   email_domain = var.email_suffix
# }