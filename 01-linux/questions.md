## 1. What is Linux ?
Linux is a open source operating system.

## 2. What is the kernel?
e kernel is the core component of the operating system. It manages hardware resources such as CPU, memory, disks, devices, and networking, and provides interfaces for applications to use those resources.

## 3. What is systemd?
```systemd``` is the service and system manager used by many modern Linux distributions. It manages services, boot targets, processes, mounts, and other system resources.

## 4. Purpose of important directories?
| Directory | Purpose                    |
| --------- | -------------------------- |
| `/etc`    | Configuration files        |
| `/var`    | Variable data such as logs |
| `/home`   | User home directories      |
| `/tmp`    | Temporary files            |
| `/proc`   | Kernel/process information |
| `/root`   | Root user's home directory |
| `/boot`   | Boot-related files         |

## 4. What is Firewall in Linux ?
A firewall is a security feature in Linux that controls incoming and outgoing network traffic.

## 5. A user cannot access your website hosted on a Linux server. How would you troubleshoot?
- I'll check weather the web server is running by pinging the server by the command **ping <server_ip>.**
- I'll also check application status weather it is running or not by the command **systemctl status nginx**
- I'll check weather the application is listing on port 80 or 443 by using the command **netstate -lntp**
- I'll check firewall status by using the command **systemctl status firewalld**
- I'll verify weather the required port is allowed in the firewall by the command **firewall-cmd --list-all**