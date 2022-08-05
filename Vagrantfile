require 'etc'

# Get the login username
vagrant_name = Etc.getlogin + "-vagrant-vm"

Vagrant.configure("2") do |config|
  # Version
  config.vm.box = "ubuntu/focal64"
  config.vm.box_version = "20220517.0.0"

  # Name
  config.vm.hostname = vagrant_name
  config.vm.provider "virtualbox" do |v|
    v.name = vagrant_name
    v.memory = 6144
    v.cpus = 4
  end

  # Node
  config.vm.provision :shell, privileged: false, path: "./provision/install-node.sh"

  # Python
  config.vm.provision :shell, path: "./provision/install-pyenv-dependencies.sh"
  config.vm.provision :shell, privileged: false, path: "./provision/install-python.sh"

  # Docker
  config.vm.provision :docker

  # kubectl
  config.vm.provision :shell, path: "./provision/install-kubectl.sh"
  
  # .net
  config.vm.provision :shell, path: "./provision/install-dotnet.sh"

  # Azure CLI
  config.vm.provision :shell, path: "./provision/install-azure-cli.sh"

  config.vm.post_up_message = <<-HEREDOC
  ------------------------------------------------------
                                                                                                               
I8,        8        ,8I  88888888888  88           ,ad8888ba,    ,ad8888ba,    88b           d88  88888888888  
`8b       d8b       d8'  88           88          d8"'    `"8b  d8"'    `"8b   888b         d888  88           
 "8,     ,8"8,     ,8"   88           88         d8'           d8'        `8b  88`8b       d8'88  88           
  Y8     8P Y8     8P    88aaaaa      88         88            88          88  88 `8b     d8' 88  88aaaaa      
  `8b   d8' `8b   d8'    88"""""      88         88            88          88  88  `8b   d8'  88  88"""""      
   `8a a8'   `8a a8'     88           88         Y8,           Y8,        ,8P  88   `8b d8'   88  88           
    `8a8'     `8a8'      88           88          Y8a.    .a8P  Y8a.    .a8P   88    `888'    88  88           
     `8'       `8'       88888888888  88888888888  `"Y8888Y"'    `"Y8888Y"'    88     `8'     88  88888888888  
                                                                                                               
                                                                                                               
  VM configured and ready to go!

  Use the following command to connect: 

    vagrant ssh
  
  ------------------------------------------------------
  HEREDOC
end
