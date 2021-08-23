#!/bin/bash
sudo apt install samba

username=$(whoami)

echo "[share]
    comment = Samba on Ubuntu
    path = /$username/ubuntu/
    read only = no
    browsable = yes" >> /etc/samba/smb.conf
sudo service smbd restart
sudo ufw allow samba
echo "please set password"
smbpasswd -a ubuntu
testparm


//may need to concat the path, needs testing 23/08/21 
