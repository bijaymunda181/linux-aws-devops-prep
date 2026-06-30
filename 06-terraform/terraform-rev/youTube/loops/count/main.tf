terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
variable "user_names" {
  default = ["Munda", "user1", "user2", "user3"]
}

resource "aws_iam_user" "user_name" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}