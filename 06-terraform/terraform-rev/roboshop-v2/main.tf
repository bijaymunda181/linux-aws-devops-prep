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

variable "components" {
  default = {
    frontend = { name = "frontend-dev"}
    mongodb = {name = "mongodb-dev"}
    catalogue = {name = "catalogue-dev"}
    user = {name = "user-dev"}
    redis = {name = "redis-dev"}
    cart = {name = "cart-dev"}
    mysql = {name = "mysql-dev"}
    shipping = {name = "shipping-dev"}
    payment = {name = "payment-dev"}
    rabbitmq = {name = "rabbitmq-dev"}
  }
}




resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.key, "name", null)
  }
}

# resource "aws_route53_record" "record" {
#   for_each = var.components
#   zone_id = var.zone_id
#   name    = "frontend-dev.lerntechnology.online"
#   type    = "A"
#   ttl     = 30
#   records = [lookup(aws_instance.instance, each.key)]
# }

