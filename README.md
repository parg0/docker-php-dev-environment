# docker-php-dev-environment
Docker box with Apache v2.4 and PHP v5.4 on CentOS v7. Before you close the tab, wondering why PHP 5.4? Because it was created for maintaining legacy code. That doesn't mean that you can't change the docker file to install any PHP version you wish.

### Specifics
- **Ideal as development environment! Edit code on the host, run in the docker box. Preserve file ownership and permissions (644) of the code**
- with additional tweaking it can be easily changed as a container for legacy applications on production servers
- All the configuration files and code are accessible from the host machine
- Apache logs are also available on the host machine
- Works on 127.0.0.1
- It can work in parallel with another web server on the host machine via reverse proxy, hence the port 8080. If you don't need this feature, change the port to 80.
- Works with any php framework: Laravel, Drupal, CodeIgniter, Magento...

More info:

### Description

The idea behind this project was to create an containerized copy of a production enviroment for the developers. This image is the first and probably the most important step in acomplishing that task. It lets the developers code on the host while seemlesly executing the code in docker while solving the issues with file ownership and permissions.
No Samba/NFS tweaks are nececary to  both the host and docker box.

## INSTALLATION
Install docker and docker-compose

git clone in your project directory

Start the following script to add the current user to docker group

	./run-me-frist.sh

Then execute the following script to pull the image from Docker Hub and start docker-compose

	./start.sh

Once you execute ./start.sh for the first time three directories will be created:

**./www/html** - this is where your code goes

**./www/logs** - Apache logs

**./www/conf** - Put your virtual host configurations here

#### Other scripts:

**docker-compose.yml** - configuration file

**stop.sh** - stops the containers

**shell.sh** - ssh to the box (If you need super user privileges in the box, execute: **sudo su**. No password needed)

**user-startup-script.sh** - executes in the box on each ssh. Very useful for further tweaking.

The **/image_scripts** directory contains files used to create the docker image.
