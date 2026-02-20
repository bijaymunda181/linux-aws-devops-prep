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


## **IP ADDRESSES**

## 7. Type of IP Addresses in AWS ?
There are three types of IP address 
1. **Private IP Addresses** : Private IP Addresses are not reachable over the internet and can be used for communication between the instances in your VPC .
- When you launch instances into a VPC, A primary IP Address from the IP Address range of the subnet is assigned to default network interface (eth0) of the instance.
- A Private IP Address remain associated with the network interface when the instance stops and is released when the instance is terminated.

2. **Public IP Address** : Public IP Addresses are reachable over the internet. We can use public IP address for communication between our instances and the internet.
- A public IP Address is mapped to the primary private IP address through network address translation (NAT).
- When you launch an EC2-instances in EC2-classic, we automatically assign public IP address to the instance from the EC2-classic public Ipv4 address pool . And it's not in our control, generally managed by Amazon Network Team.

3. **Elastic IP address** : Elastic IP Address is static IPv4 address designed for dynamic cloud computing .
- An Elastic IP Address is associated with your AWS Account.
- An Elastic IP Address is a Public IPV4 address, which is reachable over the internet.

## **ROUTE-53**

## 8. What is DNS ? 
DNS stands for Domain Name System . DNS translates domain names into IP Address and vice versa.

## 9. What is Hosted Zone ?
Hosted Zone is a container in DNS that holds all the DNS records for a specific Domain.

## 10. What is DNS Record ?
DNS Record is a mapping entry inside a hosted zone that connect a domain name to an IP Address or another domain.

## 11. Type of DNS Record?
There are so many type of DNS record such as:
- A record
- AAAA record
- CNAME record

## 12. What is Routing policy ?
In Amazon Route-53, a routing policy determines how the DNS response are returned when multiple resources are associated with the same domain name.
IT decides where traffic should go.
- Example:
suppose you have 
- 2 EC2-instances
- 2 Load balancer
- Different region
routing policy decides 
- should traffic go equally
- should traffic go nearest region
- should it failover if one server is down ?



