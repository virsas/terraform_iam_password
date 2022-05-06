# terraform_iam_password

Terraform module to configure aws users' password policy

## Dependencies

None

## Terraform example

``` terraform
#################
# variable
#################
variable "default_password_policy" { 
  default = { 
    # allow users to change password
    change          = true
    # require number in iam users' password
    number          = true
    # require special character in iam users' password
    special         = true
    # require lowercase character in iam users' password
    lower           = true
    # require uppercase character in iam users' password
    upper           = true
    # require minimal length of the iam users' password
    length          = 14
    # prevent reuse of passwords
    reuse           = false
    # max password age in days, 0 disable expiration
    age             = 0
  } 
}

#################
# module
#################
module "default_password_policy" {
  source   = "github.com/virsas/terraform_iam_password"
  region   = "eu-west-1"
  settings = var.default_password_policy
}
```
