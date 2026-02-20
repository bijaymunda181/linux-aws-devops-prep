## 1. What is VPC ?
VPC stands for Virtual Private Cloud. It provides isolated section of public cloud were we can deploy our cloud resources such as EC2-instances, s3 Buckets etc.
It provides private and secure network environment to deploy our resources similarly to an on-prem but hosted in a public cloud.  

## 2. What is Subnet ?
When we divide a big network into smaller segments, each segment is called a subnet.

## 3. What are the types of subnets?
There are 2 type of subnet:
1. private subnet : A private subnet is a subnet whose route table has not route to an Internet Gateway (IGW).
2. public subnet : A public subnet is a subnet whose route table has a route to an Internet Gateway (IGW).

## 4. What is IGW ?
IGW allow instances in public subnet to communicate with the internet .

## 5. What is NAT-Gatway ?
NAT-Gatway allow instances in a private subnet to communicate with the internet such as to download the updates from internet.
It allows only outbound traffic but incoming traffic is not allowed. 

## 6. What is Route Table ?
A route table defines how traffic will be routed within the VPC or outside the VPC.


## ip