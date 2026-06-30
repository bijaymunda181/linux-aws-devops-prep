terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
variable "iam_users" {
  type = set(string)
  default = ["new-user", "Rahul", "Mohan", "Sohan"]
}

resource "aws_iam_user" "users" {
  for_each = var.iam_users
  name = each.value
}