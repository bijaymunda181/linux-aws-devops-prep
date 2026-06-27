data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "CentOS-*"
  owners = ["125523088429"]
}

output "ami" {
  value = data.aws_ami.ami
}