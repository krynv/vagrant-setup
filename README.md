# New laptop setup guide

Please follow the steps below, **in order** (top to bottom), to get yourself set up with a brand new Ubuntu 20.04 LTS VM with all of the required software/ packages pre-installed.

The vast majority of things you will need for development will automatically be provisioned when the VM is created.
## Prerequisites: 

You **MUST** follow these instructions before continuing. This guide is designed to work on **Windows host machines only**.

1) Download and install VirtualBox, Vagrant, VSCode and Git on your **HOST** machine:
- VirtualBox: https://www.virtualbox.org/wiki/Downloads 
- Vagrant: https://www.vagrantup.com/downloads
- VSCode: https://code.visualstudio.com/download
- VSCode Remote SSH Extension: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh
- Git Bash: https://git-scm.com/downloads (if on Windows)

> **Note**: *Be mindful that you may be required to reboot your host machine at least once, post installation*.

## Spin up the VM

1) Execute the `vagrant up` command.

> **Note**: *This might take a while. There is a 'success' message at the end saying 'welcome'. 
> If you do not see this, please navigate back to the root of this project and re-run the `vagrant up` command.*

## Configure the VM

1) Despite the welcome message, don't connect to the VM just yet. 
Get the SSH config that Vagrant uses and add it to your default SSH config.

```
vagrant ssh-config
```

Then paste the complete output to the bottom of your `~/.ssh/config` file. This is the config file found on your **HOST** machine. 

> **Note**: *You can call the variable `host` whatever you'd like to appear in VSCode. For instance: `host vagrant-vm`*.

2) Connect to the VM using VSCode.

Open VSCode and press Ctrl+Shift+P.
Then type: `Remote-SSH: Connect Current Window to Host...`.

Select your new vagrant VM and choose Linux when prompted. 

You should now be fully connected to your VM.

## All the other stuff

### General how-to

#### Turn on your VM
Simply navigate to where the `Vagrantfile` is saved on your **HOST** machine and enter:
```
vagrant up
```
> **Note**: *More information about this command can be found [here](https://www.vagrantup.com/docs/cli/up).*

#### Turn off your VM

To turn off your VM, simply run:
```
vagrant halt
```

> **Note**: *More information about this command can be found [here](https://www.vagrantup.com/docs/cli/halt).*

#### Delete your VM

To completely erase your VM (and the contents), run:
```
vagrant destroy
```

> **Note**: *More information about this command can be found [here](https://www.vagrantup.com/docs/cli/destroy).*