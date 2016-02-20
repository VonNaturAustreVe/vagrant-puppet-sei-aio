# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "gutocarvalho/centos6x64"
  config.vm.hostname = "seiaio.hacklab"
  config.hostsupdater.aliases = ["seiaio.hacklab"]
  config.vm.network :private_network, ip: "192.168.250.20"
  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.customize [ "modifyvm", :id, "--cpus", "2" ]
    virtualbox.customize [ "modifyvm", :id, "--memory", "4096" ]
  end
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = "puppet/environments"
    puppet.environment = "test"
  end
end
