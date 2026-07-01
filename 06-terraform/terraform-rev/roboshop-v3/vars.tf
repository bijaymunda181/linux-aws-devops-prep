variable "security_groups" {
  default = ["sg-0031efde6a51cea49"]
}

variable "zone_id" {
  default = "Z0263363ANDXUHDABKMS"
}

variable "components" {
  default = {
    frontend  = {
      name  = "frontend"
      instance_type = "t3.micro"
    }
    cart  = {
      name  = "cart"
      instance_type = "t3.micro"
    }
  }
}