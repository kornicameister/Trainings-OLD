VAGRANT_VERSION = 2

Vagrant.configure(VAGRANT_VERSION) do |config|

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.define "master", primary: true do |master|
    master.vm.hostname = "master"
    master.vm.box = "hashicorp/precise64"
    master.vm.box_check_update = false
    master.vm.boot_timeout = 3600

    master.vm.network "forwarded_port", guest: 3000, host: 3000
    master.vm.network "forwarded_port", guest: 3001, host: 3001

    master.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
     vb.cpus = 2
    end

    master.vm.provision "shell" do |s|
      s.path = "provision.sh"
    end

  end

end
