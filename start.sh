#!/bin/bash

#Set the environment LOCAL_USER_ID to the UID of the host user running this script, so docker-compose up can start with that user
echo LOCAL_USER_ID=$UID > .env; docker-compose up
