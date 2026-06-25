resource "aws_instance" "example" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}