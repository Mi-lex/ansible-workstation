# Personal Ansible Desktop Configs

## Folder structure
The folder structure breaks down like this:

local.yml: This is the Playbook that Ansible expects to find by default in pull-mode, think of it as an "index" of sorts that pulls other Playbooks in.

**ansible.cfg**: Configuration settings for Ansible goes here.

**group_vars/**: This directory is where I can place variables that will be applied on every system.

**hosts**: This is the inventory file. Even in pull-mode, an inventory file can be used. This is how Ansible knows what group to put a machine in.

**playbooks**: Additional playbooks that I may want to run, or have triggered.

***roles/**: This directory contains the base and workstation roles. Every host gets the base role. Then either 'workstation' or 'server', depending on what it is.

**roles/base**: This role is for every host, regardles of the type of device it is. This role contains things that are intended to be on every host, such as default configs, users, etc.

**roles/workstation**: After the base role runs on a host, this role runs only on hosts that are designated to be workstations. GUI-specific things, Flatpaks etc. 

## Local test command
```shell
ansible-playbook -i hosts --check --connection=local local.yaml
```