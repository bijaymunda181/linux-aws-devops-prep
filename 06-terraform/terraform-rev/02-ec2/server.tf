terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
 }
}
}

data "aws_security_group" "example" {
  name = "my-sg"
}

resource "aws_instance" "example" {
  ami           = "ami-081b0a6eac00b4f53"
  instance_type = "t3.micro"
  vpc_security_group_ids = data.aws_security_group.example.id

  tags = {
    Name = "HelloWorld"
  }
}

