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

## 3. What is Variables?
A variable is used to store values that can change.<br>
Instead of hardcoding values, we use variables.
```
variable "instance_type" {
  default = "t2.micro"
}
```
**Use the variable:**
```
resource "aws_instance" "web" {
ami           = "ami-12345678"
instance_type = var.instance_type
}
```
## 4. What is output in terraform?
An output displays information after Terraform creates the resources.</br>
**Example:**
```
output "instance_id" {
  value = aws_instance.web.id
}
```
After **terraform apply**, Terraform will show:
```
instance_id = i-0123456789abcdef0
```