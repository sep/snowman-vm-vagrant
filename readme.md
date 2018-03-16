Snowman VM Vagrant

1. Set up a Chef Enterprise account using [these instructions](https://sepedia.net.sep.com/wiki/Hosted_Chef_Server#Getting_Connected_to_SEP_Chef_Server).
	1. Install the versions of VirtualBox, Vagrant, and ChefDk specified there.
	2. Perform all steps in "Getting Connected to SEP Chef Server."
		* You will need to create the ".chef" directory in your Windows home directory (e.g. C:\Users\<username>).
2. Install [git](https://git-scm.com/).
3. Follow the instructions at: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
	* Add the SSH key to the account you will use to access https://github.com/sep/.
4. Setup the virtual machine.
	1. Open a Git Bash terminal in your Windows home directory.
	2. Clone the snowman-vm-vagrant repo.
		* git clone git@github.com:sep/snowman-vm-vagrant.git
	3. Make the Shared directory required by the virtual machine.
		* mkdir C:\\Shared
	4. Enter the repo directory.
		* cd snowman-vm-vagrant
	5. Install the required vagrant plugins
		* vagrant plugin install vagrant-winrm
		* vagrant plugin install vagrant-berkshelf
			* If the vagrant-berkshelf install doesn't work, try "chef gem install berkshelf" instead.
	6. Get the virtual machine image
		* vagrant box add --name OC_Win10 "file:////fs2/Virtual Machines/Vagrant-Boxes/OpsCenter/OC_windows_10_virtualbox_0.3.0.box"
	7. Acquire the cookbooks needed for provisioning the virtual machine
		* berks vendor "./cookbooks"
	8. Start the virtual machine
		1. vagrant up
			* if "vagrant up" freaks out, try "vagrant up --provision"
			* If you get an error about missing environment variables (HOME, HOMEDRIVE, HOMEPATH, etc.), perform the following steps:
				1. Press Windows + Break.
				2. Click Advaned System Settings.
				3. Click Environment Variables
				4. Under "User variables for <username>", click New.
				5. Add an environment variable name HOME who value is the path to your Windows home directory.				
	9. Open VirtualBox and click Settings.
		1. In the General tab, under Advanced, enable Shared Bidirectional Clipboard.
		2. In the Display tab, under Screen, increase video memory to 128 MB.
		3. You may want to increase the virtual machine's RAM (don't recommmend more than half of the host machine's total RAM).
		3. If your computer has a SSD, you can enable virtualbox to simulate one.
		4. At this point, you may want to restart the virtual machine so these settings take effect.
			* In Git Bash, do "vagrant halt" followed by "vagrant up"
	10. Open the virtual machine for use by double-clicking the running instance in VirtualBox.
		* You can also do "vagrant rdp" from Git Bash.
5. Make sure you have VPN and Rally access. Ask the scrum master.