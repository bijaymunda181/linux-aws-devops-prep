resource "aws_instance" "frontend" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "frontend-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "cart" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "redis" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "user" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "user"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "payment"
  }
}
