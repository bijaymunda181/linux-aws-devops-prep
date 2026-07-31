terraform {
  backend "s3" {
    bucket = "tf-state-accoun15"
    key    = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}
