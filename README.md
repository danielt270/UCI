## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Cloud Diagram 2](NetworkDiagrams/"Cloud Diagram 2.png")

These files have been tested and used to generate a live ELK deployment on AWS. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the [filebeat-playbook.yml](AnsiblePlaybooks/filebeat-playbook.yml) file may be used to install only certain pieces of it, such as Filebeat

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- Load balancers act as a single point of access for a particular service and can help to protect against denial-of-service (DDoS) attacks
- Jump boxes are useful as they require for the admins to connect remotely on a secure computer to access and manage devices in a separate security zone

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system resources.
- [Filebeat](AnsiblePlaybooks/filebeat-playbook.yml) primarily watches system logs and forwards any changes to the Elasticsearch Host
- [Metricbeat](AnsiblePlaybooks/metricbeat-playbook) collects the metrics and system resources usage to display in Elasticsearch

The configuration details of each machine may be found below.

| Name        | Function      | IP Address    | Operating System |
| ----------- | ------------- | ------------- | ---------------- |
| JumpBox     | Gateway       | 172.31.16.26  | Amazon Linux     |
| ELK         | ElasticSearch | 172.31.29.32  | Ubuntu           |
| Webserver 1 | Webserver     | 172.31.46.189 | Amazon Linux     |
| Webserver 2 | Webserver     | 172.31.17.12  | Amazon Linux     |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP address: 70.181.105.62

Machines within the network can only be accessed by the JumpBox. Private IP: 172.31.16.26

A summary of the access policies in place can be found in the table below.

| Name        | Publicly Accessible | Allowed IP Addresses |
| ----------- | ------------------- | -------------------- |
| JumpBox     | Yes                 | 172.31.16.26         |
| ELK         | Yes                 | 172.31.29.32         |
| Webserver 1 | No                  | 172.31.46.189        |
| Webserver 2 | No                  | 172.31.17.12         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous as this allows for reuse as well as automation of installations and updates, making daily tasks more efficient.

The [playbook](AnsiblePlaybooks/install-elk.yml) implements the following tasks:

- Installs docker.io
- Increases virtual memory
- Installs pip & python3
- Installs docker module
- Downloads and launches docker web container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![elk-docker](elk-docker.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Webserver 1: 172.31.46.189
- Webserver 2: 172.31.17.12

We have installed the following Beats on these machines:
- [Metricbeat](AnsiblePlaybooks/metricbeat-playbook)
- [Filebeat](AnsiblePlaybooks/filebeat-playbook.yml)

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._