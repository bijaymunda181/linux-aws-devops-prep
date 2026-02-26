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

## **EC2**

## 13. How many resources are required to create an EC2-instance ?
To create a EC2-instance minimum 6 resources are required:
1. AMI 
2. Instance Type 
3. VPC
4. Storage
5. SG
6. Keypair

## 14. What is AMI ?
In Amazon EC2, an AMI (Amazon Machine Image) is a template used to launch EC2 instances.It contains the operating system, application software, and configuration settings required to create a virtual server.
Its like a blueprint of the server.

## 15. What is Keypair ?
A keypair in AWS EC2 consists of a public key and private key used for secure SSH authentication to instances. The public key stored on the instance, and the private key is kept by the user to connect securely without using password .

## 16. How will you recover lost EC2 key pair ?
There is 2 methods by using that we can recover the lost ec2 key pair
1. By creating the custom image : Here we have to replace the server, we have to create custom image of the instance, need to know private ip, subnet, and VPC . In EC2 instance creation using AMI have to use previous private IP only so we have to terminate the lost key EC2 instance. While selecting the key, if the key is lost from sever side only then we can use previous key also but if key is lost from local pc or aws side then we need to create new keypair .
2. Volume Method : Here no need to replace the server but we required one more sever to recover the key.

## 17. How many ways are there to create a key pair ?
There are two ways to create a key pair in AWS.

## 18. Instance Type
1. General Purpose : Balance CPU, Memory, and Network Resources.
2. Compute Optimized : High-performance CPU with more cores and higher clock speed.
3. Memory Optimized : Very high RAM compare to CPU.
4. Storage Optimizes : High storage capacity with local instance storage.
5. Accelerated Computing : Very High performance or Specialized processors.

## 19. Purchasing Models foe EC2 
1. On-Demand : 
- In the On-Demand model, we first use the service and then pay according to our usage.
- There is no hardware commitment and there is no guarantee for the dedicated hypervisor.
- Billing is Based on per minute . Costly compare to other Purchasing model.

2. Reserved : 
- There have pre-agreement of every service for some time period. And Amazon generally provide some discount for the service.

3. Spot Instances : 
- A Spot Instance is an EC2 instance that uses unused AWS capacity at a discounted price. However, it can be terminated by AWS at any time if the capacity is needed.

## CloudWatch

## 20. What is CloudWatch ?
CloudWatch is a AWS infra and resource monitoring tool.

## 21. How to enable detail monitoring ?
Select the instance then go to Action then click on Monitor and Troubleshoot then click on Manage Detail Monitoring then select Enable. In EC2 if monitoring is showing disable that means Detail monitoring is disable but basic monitoring is enable by default. we can't disable basic monitoring.

## 22. What is status check ?
When we launch an instance, AWS perform two health checkup by using CloudWatch metric 
1. System Status Check : AWS backed virtual infra . Means it will check the hardware then continue to the 2nd health checkup
2. Instance Status Check (OS level health check) : Here AWS will check the connectivity from hypervisor to instance.

## *EBS (Elastic Block Storage)*

## 23. What is EBS ?
EBS is a network-based block storage service in AWS that provides persistent storage for EC2 instances.

## 24. How to create EBS volume and attach to EC2 instance ?
Go to EC2 service then click on volumes then click on create volume then fill the details like volume type (gp1/gp3), size, and AZ.</br>
To attach the volume to EC2 instance first select the volume then go to Action then choose the instance then give the device name then click on attach.

## 25. How create Snapshot of the EBS volume ?
Go to EC2 service then go to volumes then select the volume then click on Action then click on create snapshot.

## 26. How to restore volume from Snapshot ?
Go to EC2 service then on the left side of the screen click on snapshot then select the snapshot then click on Action then click on create volume from snapshot.

## 27. How to Resize or Extend the EBS volume ?
Go to EC2 service then go to volumes then select the volume then click on Action then select click on modify volume then we provide the volume size and AZ.


## **S3 (Simple Storage Service)

## 28. What is S3 and why it is used ?
Amazon S3 (Simple Storage Service) is an object storage service provided by Amazon Web Services.</br>
S3 is mainly used for storing logs, backup, etc.

## 29. how to create S3 Bucket ?
Go to s3 service then click on create bucket then provide the Bucket name, Bucket name should be unique then click on create bucket.

## 30. What is Bucket Policy and Why it is used ?
A bucket policy is a JSON-based resource policy that is attached directly to an S3 bucket. It defines who can access the bucket and what actions they can perform, such as ListBucket, GetObject, and PutObject.







