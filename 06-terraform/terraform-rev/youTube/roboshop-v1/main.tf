variable "ami" {
  default = "ami-027e79d2df3347114"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_group" {
  default = [ "sg-0031efde6a51cea49" ]
}

variable "zone_id" {
  default = "Z0263363ANDXUHDABKMS"
}

variable "components" {
  default = {
    frontend  = {name = "frontend-dev"}
    mongodb  = {name = "mongodb-dev"}
    catalogue  = {name = "catalogue-dev"}
    cart  = {name = "cart-dev"}
    redis  = {name = "rdis-dev"}
  }
}


resource "aws_instance" "instance" {
  for_each = var.components

  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value, "name", null )
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = ${lookup(each.value, "name", null ).lerntechnology.online}
  type    = "A"
  ttl     = 30
  records = [ aws_instance.instance[each.key].private_ip ]
}

