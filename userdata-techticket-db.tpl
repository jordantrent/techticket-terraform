#!/bin/bash
# Update the package list
apt-get update -y

apt-get install -y mysql-server

mysql_secure_installation <<EOF

y
rootpassword
rootpassword
y
y
y
y
EOF

systemctl start mysql
systemctl enable mysql

echo "MySQL has been successfully installed and started!"

ufw allow 3306/tcp