## 1. How can Account B access an S3 bucket in Account A ?
I will create an IAM role in Account A with S3 permissions and configure the trust policy to allow Account B to assume the role using STS. In Account B, I will attach an AssumeRole policy to the IAM user or role. Once assumed, the user can access the S3 bucket in Account A.

## Aquera Interview Questions
## 1. Suppose an EC2 instance working very slow and stop working how would you troubleshoot ?
"First, I would check EC2 status checks and CloudWatch metrics to identify CPU, memory, disk, or network issues. Then I would connect to the instance via SSH and use commands like top, free -m, and df -hT to check resource utilization. I would review system logs for errors, verify EBS and network health, and if SSH is inaccessible, use the EC2 serial console or attach the EBS volume to another instance for troubleshooting. Based on the findings, I would resolve the root cause and monitor the instance."

## 2. Where would you place NAT Gateway and Internet gateway?
I would place NAT gateway in Public Subnet and Internet Gateway in VPC.