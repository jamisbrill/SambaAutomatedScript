#!/bin/bash
sudo apt install samba
echo "[share]
    comment = Samba on Ubuntu
    path = /home/ubuntu/
    read only = no
    browsable = yes" >> /etc/samba/smb.conf
sudo service smbd restart
sudo ufw allow samba
echo "please set password"
smbpasswd -a ubuntu
testparm

# Replace ubuntu with your linux username 
