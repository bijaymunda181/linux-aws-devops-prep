## 1. What is Terraform ?
Terraform is an infrastructure as a code (IaC) tool develop by Hashicorp used to provision and manage cloud resources using code.

## 2. What is Resource in terraform ?
A resource is the infrastructure that Terraform creates and manages.</br>
**Examples:**
- EC2 Instance
- S3 Bucket
- VPC
- Security Group

```
resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```
**Here:**
- aws_instance → Resource type
- web → Resource name