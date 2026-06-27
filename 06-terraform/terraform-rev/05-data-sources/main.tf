data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "centos-*"
  owners           = ["125523088429"]