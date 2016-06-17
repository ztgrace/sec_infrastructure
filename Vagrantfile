# -*- mode: ruby -*-
# vi: set ft=ruby :
# DO_API_TOKEN="XXX" vagrant up --provider=digital_ocean

Vagrant.configure(2) do |config|

  config.vm.define :vanilla do |vanilla|
    vanilla.vm.box = "ubuntu/trusty64"
    vanilla.vm.hostname = "vanilla"
    vanilla.vm.provision "ansible" do |ansible|
      ansible.playbook = "vanilla.yml"
    end
  end

  config.vm.define :recon do |recon|
    recon.vm.box = "digital_ocean"
    recon.vm.hostname = "recon"
    recon.vm.provision "ansible" do |ansible|
      ansible.playbook = "recon.yml"
    end
  end

  config.vm.define :fuzzer do |fuzzer|
    fuzzer.vm.box = "digital_ocean"
    fuzzer.vm.hostname = "fuzzer"
    fuzzer.vm.provision "ansible" do |ansible|
      ansible.playbook = "fuzzer.yml"
    end
  end

  # Need to use Debian for strace
  config.vm.define :malwr do |malwr|
    malwr.vm.box = "digital_ocean"
    malwr.vm.hostname = "apollo"
    malwr.vm.provision "ansible" do |ansible|
      ansible.playbook = "malwr.yml"
    end
  end

  config.vm.define :ctf do |ctf|
    ctf.vm.box = "digital_ocean"
    ctf.vm.hostname = "ctf"
    ctf.vm.provision "ansible" do |ansible|
      ansible.playbook = "ctf.yml"
    end
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
    
  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = "~/.ssh/vagrant_do_id_rsa"
    override.vm.box = "digital_ocean"
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
    provider.token = ENV["DO_API_TOKEN"]
    #provider.image = "ubuntu-14-04-x64"
    provider.image = "debian-7-0-x64"
    provider.region = "nyc3"
    provider.size = "512mb"
  end
end
