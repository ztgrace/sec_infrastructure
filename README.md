# sec_infrastructure
My ephemeral security testing and analysis infrastructure based on [Vagrant](https://www.vagrantup.com/) and [Ansible](http://www.ansible.com/home).

## Notes
* All of the VM definitions are in a single `Vagrantfile`, so it's treated as a multi-vm architecture. To bring up a specific VM, you'll need to specify it by name: `vagrant up malwr`.
* Most VMs are configured to start up in [DigitalOcean](https://m.do.co/c/7ba49443fa3e) (referral link) using the [DigitalOcean Vagrant Provider Plugin](https://github.com/devopsgroup-io/vagrant-digitalocean). Use `vagrant up --provider=digital_ocean` to stand up a box in DO.
* Modify the DO provider settings in the `Vagrantfile` to change the OS, region, and size.
