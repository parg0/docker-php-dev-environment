# docker-php-dev-environment
Docker box with Apache v2.4 and PHP v5.4 on CentOS v7 capable of:

- **Ideal as development environment! Edit code on the host, run in the docker box. Preserve file ownership and permissions (644)**
- Configure your apache virtualhosts from the host machine
- View apache error and access logs on the host machine
- Hosts accessible on 127.0.0.1
- Work in parallel with another web server on the host machine via reverse proxy
- Can be used with any kind of php framework: Laravel, Drupal, CodeIgniter...

More info:

### Description

Imagine an ideal development environment: an exact copy of your production setup. You can accomplish that by tweaking this Docker box. No more sudo on your host to be able to edit the code residing on Docker, no more Samba tweaks, no more permission and file ownership problems!
Code on your host machine with your default user.
Run the code in docker!

### Original intended usage
Why PHP v5.4?
Because this setup was created for working with legacy PHP projects in parallel with web server serving PHP v7. Apache is set to work on port 8080, so all you need to do is setup a reverse proxy on the host machine.

## INSTALLATION
Install docker and docker-compose

Start the following script to add the current user to docker group

	./run-me-frist.sh

Then execute the following script to pull the image from Docker Hub and start docker-compose

	./start.sh


####Other scripts:

**docker-compose.yml** - configuration file

**stop.sh** - stops the containers

**shell.sh** - ssh to the box (If you need super user privileges in the box, execute: sudo su. No password needed)

**user-startup-script.sh** - executes in the box on each ssh. Very useful for further tweaking.

The **/image_scripts** directory contains files used to create the docker image.
