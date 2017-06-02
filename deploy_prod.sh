#!/bin/bash

ssh -v ec2-user@ec2-54-163-177-62.compute-1.amazonaws.com << EOF

echo '1. Updating sources'
touch test.txt
cd /var/www/html/
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
