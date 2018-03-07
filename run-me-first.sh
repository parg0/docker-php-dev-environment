#!/bin/bash

#YOU NEED TO RUN THIS SCRIPT ONLY ONCE, AFTER YOU INSTALL docker & docker-compose
sudo usermod -aG docker ${USER}
newgrp docker
