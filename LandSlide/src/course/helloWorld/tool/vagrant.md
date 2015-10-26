# Vagrant

Vagrant is a tool for building and distributing development environments.

Development environments managed by Vagrant can run on local virtualized platforms such as VirtualBox or VMware, in the cloud via AWS or OpenStack, or in containers such as with Docker or raw LXC.

## How use vagrant

First, make sure your development machine has VirtualBox installed. After this, download and install the appropriate Vagrant package for your OS.

To build the first virtual environment:

	!sh
	vagrant init ubuntu/trusty64
	vagrant up
	
## How configure the virtual machine

We'll just setup our basic project, and we'll do so using a shell script. (view example hello world) 