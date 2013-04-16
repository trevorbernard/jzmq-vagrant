# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "cxengage"
  config.vm.box_url = "http://userevents-vagrants.s3.amazonaws.com/cxengage.box"
  # config.vm.network :public_network
  config.vm.provider :virtualbox do |vb|
    # vb.gui = true
    vb.customize ["modifyvm", :id,
                  "--memory", "2048",
                  "--cpus", 2]
  end
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "./cookbooks"
    chef.roles_path = "./roles"
    chef.add_role "jzmq"
    ## You may also specify custom JSON attributes:
    # chef.json = { :mysql_password => "foo" }
  end
end
