
Vagrant.configure("2") do |config|

    config.vm.box = "bento/ubuntu-20.04"
  
    config.vm.define "machine" do |machine|
      machine.vm.hostname = "machine"
  
      machine.vm.network "private_network", ip: "192.168.56.10"
      
      machine.vm.synced_folder ".", "/home/vagrant/CarpetFuzz/"
      machine.vm.synced_folder ".", "/vagrant", disabled: true
      machine.vm.provision "shell", path: "scripts/vagrant-boot.sh"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "machine"
        vb.memory = "8192"
        vb.cpus = "1"
      end
    end
  end
  