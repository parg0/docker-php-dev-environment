#!/bin/bash

#Important because of file permissions created inside the container if you connect via root then all newly created files will have root ownership
#and that will make them unwritable on the host. 
#Also git might nag you that your config user.name & user.email are not set

docker exec -ti --user developer dev_php bash
