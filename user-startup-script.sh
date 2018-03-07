#!/bin/bash

#USE THIS FILE TO ADD SCRIPTS WHICH WILL EXECUTE BATCH OF USER COMMANDS UPON ENTERING SHELL

#Change the prompt to show the active git branch and add some colors
export PS1="\[\033[33;1m\]\w\[\033[m\] (\[\033[30;1m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[m\]) \$  \n $ "
echo -e "\e[96mWelcome!"
echo -e "\e[92mThis line is printed from ./user_startup_script.sh upon entry in the shell"
echo -e "You can use that script to further tweak this setup"

#resize the terminal window so the apps (nano, vim...) take the complete window, not just 80x25
#resize >> /dev/null

