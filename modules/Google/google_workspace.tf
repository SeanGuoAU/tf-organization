################################################## google_workspace
resource "googleworkspace_group" "clients" {
  email = "aws_client_accounts@seanguostudio.click"
  #   name        = "Sales"
  #   description = "Sales Group"
  aliases = [for project in var.project : lower("${project}${local.email_domain}")]

  #   timeouts {
  #     create = "1m"
  #     update = "1m"
  #   }
}

locals {
  email_domain = var.email_suffix
}