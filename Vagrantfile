Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.synced_folder ".", "/home/vagrant/ivy-mutex", automount: true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "4"]
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end
end
