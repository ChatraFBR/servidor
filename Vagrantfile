Vagrant.configure("2") do |config|

  config.vm.box = "debian/bookworm64"

  config.vbguest.auto_update = false

  config.vm.network "private_network", ip: "192.168.2.200"

  config.vm.provision "shell" , path: "sh/nginx.sh"
  config.vm.provision "shell" , path: "sh/primeraPagina(git).sh"
  
  config.vm.provision "shell" , path: "sh/ftp.sh"
  config.vm.provision "shell" , path: "sh/segundaPagina(ftpd).sh"

end
