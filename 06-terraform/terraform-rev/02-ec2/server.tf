terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
 }
}
}
resource "aws_instance" "example" {
  ami           = "ami-081b0a6eac00b4f53"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

