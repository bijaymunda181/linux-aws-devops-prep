terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
 }
}
}
resource "aws_instance" "example" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}