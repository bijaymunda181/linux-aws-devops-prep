terraform {
  backend "s3" {
    bucket = "tf-state-accoun15"
    key    = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hellow"
}

output "test" {
  value = var.test
}