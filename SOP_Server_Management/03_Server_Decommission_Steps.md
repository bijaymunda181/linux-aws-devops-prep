## What is the Process of Decommissioning a Server?

We receive a service request for server decommissioning. The process includes the following steps:

1. If the server is up and running, we first inform the server owner and application owner and obtain their approval.

2. A change request is raised and sent for CAB (Change Advisory Board) review, where all CAB members are present.

3. During the CAB meeting, we present the change details, such as:

- The server is not being used

- The decommission request was initiated by the server owner, application owner, or system engineer

4. After CAB approval on the specified date and time, we shut down the server.

5. We then wait for 15–20 days to monitor if any issues occur after shutdown. This observation period is called a smoke test.

6. no issues are reported within 15–30 days, we proceed with deleting the server.

Before deleting the server, the following tasks must be completed:

- If antivirus or security agent is installed, it must be uninstalled.

- The security team must be informed so they can remove the server from security tools.

- Backup policies and monitoring configurations must be removed if applicable.

7. There will be a CMDB entry in ServiceNow, which must be updated or removed before server deletion.

8. For each individual task, a C-task (Change Task) is created under the change request.

- Security-related tasks are assigned to the security team

- Backup-related tasks are handled by the backup team

- Shutdown and deletion are handled by the server team

- CMDB updates are managed by the change management/ServiceNow team

Once all C-tasks are completed and approved, we proceed with the final deletion of the server.