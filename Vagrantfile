# Vim
# vim: set filetype=ruby:
# vim: set ft=ruby:
#
# Emacs
# -*- mode: ruby; -*-

VAGRANT_API_VERSION = "2"
MAX_MEMORY = 512

Vagrant.configure(VAGRANT_API_VERSION) do |config|

    # Vagrant box to build on
    config.vm.box = "ubuntu/vivid64"

    # host to guest port forwarding
    config.vm.network :forwarded_port, guest: 80, host: 8080

    # settings for VirtualBox provider
    config.vm.provider "virtualbox" do |v|
        v.memory = MAX_MEMORY
    end

    # settings for VMware Fusion provider
    config.vm.provider "vmware_fusion" do |v|
        v.vmx["memsize"] = MAX_MEMORY
    end
end
