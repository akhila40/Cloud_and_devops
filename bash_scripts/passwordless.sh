#This script is used to connect to EC2 through SSH without having a key-pair

#!/bin/bash
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo echo "root:password" | chpasswd
sudo apt-get install openjdk-17-jre -y
hostname Node-1

