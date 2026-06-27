data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-*"
  owners = ["125523088429"]
}