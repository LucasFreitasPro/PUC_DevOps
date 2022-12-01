locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  commom_tags = {
    ManageBy    = "Terraform"
    Departament = "Technology Luke"
    Provider    = "Infra Team"
    Owner       = "Infra Team"
    Billing     = "Infra"
    Environment = terraform.workspace
    Contact     = "infra.terraform@gmail.com"
  }
}