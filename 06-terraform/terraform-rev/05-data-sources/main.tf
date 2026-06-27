data "aws_ami_ids" "ami" {
  name_regex  = "CentOS-*"
  owners = ["125523088429"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}