provider "aws" {
  region = var.region
}

resource "aws_iam_account_password_policy" "policy" {
  allow_users_to_change_password = var.settings.change
  require_numbers                = var.settings.number
  require_symbols                = var.settings.special
  require_lowercase_characters   = var.settings.lower
  require_uppercase_characters   = var.settings.upper
  minimum_password_length        = var.settings.length
  max_password_age               = var.settings.age 
  password_reuse_prevention      = var.settings.reuse
}