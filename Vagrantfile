# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :web do |web_config|
    web_config.vm.box = "precise64"
    web_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    web_config.vm.network :private_network, ip: "33.33.33.33"
    web_config.vm.network :forwarded_port, guest: 80, host: 8080

    web_config.vm.hostname = "webserver"

    web_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end

    web_config.vm.provision :ansible do |ansible|
      ansible.playbook = "devops/user.yml"
      ansible.inventory_path = "devops/webhosts"
      ansible.verbose = "vvvv"
      ansible.sudo = true
    end
  end
end
