terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "CentOS Stream 9 x86_64"
  owners = ["125523088429"]
}

output "ami_ids" {
  value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0031efde6a51cea49"]
}
