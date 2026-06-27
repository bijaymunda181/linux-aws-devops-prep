variable "ami" {
  default = "ami-027e79d2df3347114"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_groups" {
  default = ["sg-0031efde6a51cea49"]
}

variable "zone_id" {
  default = "Z0263363ANDXUHDABKMS"
}





resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
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

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "mongodb-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "catalogue-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "cart" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "cart-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "redis" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "redis-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "user-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "mysql-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "shipping-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "rabbitmq-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-027e79d2df3347114"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0031efde6a51cea49" ]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0263363ANDXUHDABKMS"
  name    = "payment-dev.lerntechnology.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
