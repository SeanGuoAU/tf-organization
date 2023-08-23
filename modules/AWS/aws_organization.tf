################################################## organizational_units
resource "aws_organizations_organizational_unit" "layer_1" {
  count     = length(var.project)
  name      = var.project[count.index]
  parent_id = var.root_layer_id
}

resource "aws_organizations_organizational_unit" "layer_2" {
  count     = length(var.project)
  name      = var.layer_2_name
  parent_id = aws_organizations_organizational_unit.layer_1[count.index].id
}

resource "aws_organizations_organizational_unit" "layer_3_1" {
  count     = length(var.project)
  name      = var.layer_3_1_name
  parent_id = aws_organizations_organizational_unit.layer_2[count.index].id
}

resource "aws_organizations_organizational_unit" "layer_3_2" {
  count     = length(var.project)
  name      = var.layer_3_2_name
  parent_id = aws_organizations_organizational_unit.layer_2[count.index].id
}

################################################## organizational_accounts
# resource "aws_organizations_account" "pre-prod_account" {
#   count     = length(var.project)
#   name      = "infra_preprod_${lower(var.project[count.index])}"
#   email     = "infra_preprod_${lower(var.project[count.index])}${local.email_domain}"
#   parent_id = aws_organizations_organizational_unit.layer_3_1[count.index].id
# }

# resource "aws_organizations_account" "prod_account" {
#   count     = length(var.project)
#   name      = "infra_prod_${lower(var.project[count.index])}"
#   email     = "infra_prod_${lower(var.project[count.index])}${local.email_domain}"
#   parent_id = aws_organizations_organizational_unit.layer_3_2[count.index].id
# }

# locals {
#   email_domain = var.email_suffix
# }