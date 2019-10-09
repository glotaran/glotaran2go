# pyglotaran with vagrant and jupyter lab

## Prerequirements

This project uses [Vagrant](https://www.vagrantup.com/)
as virtualization solution to enable you to run `pyglotaran`
on any operating system. Here `Vagrant` is set up to use
[VirtualBox](https://www.virtualbox.org/) as virtualization backend.
In order for this project to work, it is mandatory that install
[VirtualBox](https://www.virtualbox.org/) as well as
[Vagrant](https://www.vagrantup.com/).

## Usage

Navigate with the terminal of your choice to this director and run
`vagrant up`, this will create a virtual machine and start `jupyter server`
in your home folders subdirector `~/pyglotaran_projects`.
The first time you run this command, it will take a while, since it is creating
the virtual machine and installing all required packages in it.

After the command finished (you can type in your terminal again),
just double click `open_vagrant-jupyter.html` and `jupyter lab`
will open in your default browser.

When you are done working with `pyglotaran`, you can stop the virtual machine
by running `vagrant halt`.
