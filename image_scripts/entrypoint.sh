#!/bin/bash

# Create a local user named `developer` with the passed UID from the .env file

USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
echo "User developer will be created with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -U -o -c "WEb Developer" -d /home/developer -m -G apache,root,wheel -p `openssl passwd developer` developer
export HOME=/home/developer

chown developer.developer /home/developer -R
chown developer.developer /var/www -R
chown developer.developer /etc/httpd/conf.d -R

#Some aliases
echo "alias ls=\"ls --color=auto\"" > /home/developer/.bashrc
echo "alias ll=\"ls -l\"" >> ~/.bashrc
echo ". /tmp/user-startup-script.sh" >> /home/developer/.bashrc

echo -e "All done. May you have a productive day!"
exec /usr/local/bin/gosu developer "$@"

