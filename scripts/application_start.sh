#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ubuntu/angular

#navigate into our working directory where we have all our github files
cd /home/ubuntu/angular

#Removing existing contents
sudo rm -rf *

#Clone the repository
git clone https://github.com/buckydevops/demo01.git

#Restart nginx
/etc/init.d/nginx start > /var/log/nginx/access.log 2> /var/log/nginx/error.log< /dev/null &

#add npm and node to path
#export NVM_DIR="$HOME/.nvm"	
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
#npm install

#start our node app in the background
#node app.js > app.out.log 2> app.err.log < /dev/null & 
