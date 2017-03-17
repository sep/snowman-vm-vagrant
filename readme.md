Snowman VM Vagrant 

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

	git clone git@github.com:sep/snowman-vm-cookbook.git
	cd snowman-vm-cookbook
	mkdir C:\Shared
	vagrant plugin install vagrant-winrm 
	vagrant plugin install vagrant-berkshelf	
	vagrant box add "file:////fs2/Virtual Machines/Vagrant-Boxes/OpsCenter/OC_windows_10_virtualbox_0.2.0.box" --name OC_Win10
	berks vendor "./cookbooks"
	
	vagrant up
	vagrant rdp
