# serverProvision
Provisioning using _Vagrant_, _VB_ and _Ansible_.

## Remote Machine OS

* Ubuntu 16.04 64bit


## Provisioning Steps

* Install [Vagrant](https://www.vagrantup.com/docs/installation/), [VirtualBox](https://www.virtualbox.org/wiki/Downloads), and [Ansible](http://docs.ansible.com/ansible/intro_installation.html) based on directions for your host machine

  - _you may have to enable virtualization in the BIOS_

* Clone this repo and `cd` to it
* Install Ansible roles
  - `ansible galaxy install nodesource.node`
  - `ansible galaxy install jdauphant.nginx`
  - `git clone https://github.com/jlund/ansible-go.git`
* `vagrant box add puphpet/ubuntu1604-x64`
* `vagrant up`
* `vagrant ssh`

## Items Installed/Configured

* Elm
* Nginx
* Nodejs
* Npm
* Vim
* Go
* Postgres
* Git


