#!/bin/bash

ssh -v ec2-user@ec2-54-163-177-62.compute-1.amazonaws.com << EOF

echo '1. Updating sources'
touch test.txt

echo "2. Restart apache" -y

echo 'Done!'

EOF
