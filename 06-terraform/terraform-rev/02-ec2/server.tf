resource "aws_instance" "example" {
  ami           = "ami-000b3aac08e5c5072"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}