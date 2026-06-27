data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "centos-*"
  owners = ["125523088429"]
}