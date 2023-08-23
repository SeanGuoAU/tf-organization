resource "aws_s3_bucket" "terraform_state" {
  #change bucket name for environment
  bucket = "hardship-terraform-state-aws-organization"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "hardship-terraform-locks-aws-organization"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
################################################
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "hardship-terraform-state-aws-organization"
    key    = "global/s3/terraform.tfstate"
    region = "ap-southeast-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "hardship-terraform-locks-aws-organization"
    encrypt        = true
  }
}