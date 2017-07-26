# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.2"

Vagrant.configure("2") do |config|
    config.vm.define "Snowman-VM"
    config.vm.box = "OC_Win10"
    config.vm.communicator = "winrm"

    # Admin user name and password
    config.winrm.username = "vagrant"
    config.winrm.password = "vagrant"

    config.vm.guest = :windows
    config.windows.halt_timeout = 15
    #config.vm.hostname = "BobsVM"
    config.vm.synced_folder "C:/Shared", "C:/Shared"
    config.vm.synced_folder ".", "/vagrant", disabled: true

    config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

    config.vm.provider :virtualbox do |v, override|
        #v.gui = true
        v.customize ["modifyvm", :id, "--memory", 4096]
        v.customize ["modifyvm", :id, "--cpus", 4]
        v.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
    end

	config.vm.provision "chef_solo" do |chef|
		chef.add_recipe "snowman-vm-cookbook"
	end
end
