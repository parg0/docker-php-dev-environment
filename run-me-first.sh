#!/bin/bash

#YOU NEED TO RUN THIS SCRIPT ONLY ONCE, AFTER YOU INSTALL docker & docker-compose

sudo adduser ${USER} docker
newgrp docker
