# vagrant-serve-static

A very minimal Vagrant server to serve your static files.


## usage

To use this environment, you will need [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).

From your terminal, follow these instructions:

```bash
# clone the repo and move into it
git clone https://github.com/drmyersii-tinker/vagrant-serve-static.git static
cd static

# launch the Vagrant machine
vagrant up
```

Once the Vagrant machine is done downloading the base image, booting, and provisioning, you can access the default project page via the following url:

```
http://localhost:8080/default/
```

Anything you place in the ```www``` directory will be visible at ```http://localhost:8080/```.

Enjoy!
