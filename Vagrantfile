VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
config.vm.box = "hashicorp/precise32"
config.vm.provision "shell", path: "manifests/bootstrap.sh"
#config.vm.box = "puppetlabs/centos-7.2-64-puppet"

config.vm.define :db do |db_config|
    db_config.vm.network :private_network, :ip => "192.168.33.10"
    db_config.vm.provision "puppet" do |puppet|
        puppet.manifest_file = "db.pp"
    end
end

config.vm.define :web do |web_config|
    web_config.vm.network :private_network, :ip => "192.168.33.12"
end

config.vm.define    :web2 do |web_config|
    web_config.vm.network   :private_network,
                            :ip=> "192.168.33.13"
    web_config.vm.provision "puppet" do |puppet|
        puppet.manifest_file = "web.pp"
    end
end

config.vm.define :monitor do |monitor_config|
    monitor_config.vm.network :private_network,:ip => "192.168.33.14"
    end
end