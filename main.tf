terraform {
  required_version = "~> 1.5.0"
  required_providers {
    googleworkspace = {
      source  = "hashicorp/googleworkspace"
      version = "0.4.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

provider "googleworkspace" {
  credentials             = "./google_api.json"
  customer_id             = "C00hhjg7h"
  impersonated_user_email = "sean@seanguostudio.click"
  #   oauth_scopes = [
  #     "https://www.googleapis.com/auth/admin.directory.group"
  # "https://www.googleapis.com/auth/admin.directory.userschema",
  # include scopes as needed
  #   ]
}
##################################################
# module "aws_organization" {
#   source = "./modules/AWS"

#   project        = var.project
#   email_suffix   = var.email_suffix
#   root_layer_id  = var.root_layer_id
#   layer_2_name   = var.layer_2_name
#   layer_3_1_name = var.layer_3_1_name
#   layer_3_2_name = var.layer_3_2_name
# }

# module "google_wrokspace" {
#   source = "./modules/Google"

#   project      = var.project
#   email_prefix = var.email_prefix
#   email_suffix = var.email_suffix
# }