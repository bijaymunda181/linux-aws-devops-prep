data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "CentOS Stream 9 x86_64 20260526"
  owners = ["125523088429"]
}