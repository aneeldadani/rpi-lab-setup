# rpi-lab-setup
I used the Ansible Playbooks to configure the Raspberry Pi nodes for my environment.

### install-ansible.sh
This bash script is used to install Ansible on your Ansible Controller. The Ansible Controller is used to execute playbooks which lets you manage the nodes in your environment. All the playbooks will run from the Controller. The hosts file will maintain the inventory which is what you're going to be configuring.

### hosts.yaml
This is your inventory file. You can specify the host details and group them. When you want a playbook to execute against a group of assets in your inventory, this is where you manage it.

### rpi-setup.yaml
This playbook configures the following:
- Takes a backup of the /etc/hostname file
- Adds a user (username has to be specified in the playbook)
- Changes the users password by prompting for the password
- Prompts and configures the rpi-controller and rpi-nodes (inventory group) hostname on each node, respectively

### create-user.yaml
The playbook to use when you want to create a user. When you run this playbook, it will prompt for the username and creates the username accordingly.

### delete-user.yaml
The playbook to use when you want to delete a user. When you run this playbook, it will prompt for the username and deletes the username accordingly.

### reboot.yaml
Reboots the server

#### Sample playbook command:
```ansible-playbook reboot.yaml -i hosts.yaml --vault-id ubuntu@prompt```

### ansible-vault.txt
This shows how to use Ansible Vault to maintain and use your secrets so you don't have to store sensitive data in plaintext.
