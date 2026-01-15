## What is the Process of server Provisioning ?
In server provisioning, we first receive a service request. The service request contains approval and all the required details to create the server, such as which image to use (operating system), how many disks need to be attached, disk size, server name, and other configuration details.

The first step is to verify the approval.
The second step is to cross-check whether all required details are available, such as:

- AMI or operating system image

- Disk details (number and size)

- Network details (VPC and subnet)

- Server hostname

- Any additional security or application requirements

Once all the details are validated, we proceed with provisioning the server according to the provided specifications.