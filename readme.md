Snowman VM Vagrant

Please be sure to sign up for a Chef Enterprise account using [these instructions](https://sepedia.net.sep.com/wiki/Hosted_Chef_Server#Getting_Connected_to_SEP_Chef_Server).

SetUp 

1. Download and install Chocolately
1. Install VirtualBox
1. Install Vagrant
1. Install ChefDk
1. Install Vagrant-WinRM plugin
1. install vagrant-berkshelf plugin

Here are the cmd commands for Windows: (untested) 

	@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

(restart cmd)

	choco install virtualbox
	choco install vagrant 
	choco install chefdk
  

(restart cmd)

	git clone git@github.com:sep/snowman-vm-vagrant.git
	cd snowman-vm-vagrant
	mkdir C:\Shared
	vagrant plugin install vagrant-winrm 
	vagrant plugin install vagrant-berkshelf	
	vagrant box add --name OC_Win10 "file:////fs2/Virtual Machines/Vagrant-Boxes/OpsCenter/OC_windows_10_virtualbox_0.3.0.box"
	berks vendor "./cookbooks"
	
	vagrant up

	# if "vagrant up" freaks out, try "vagrant up --provision"

	vagrant rdp # or just, like, double-click the running instance in virtualbox
