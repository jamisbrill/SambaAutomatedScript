#!/bin/bash
sudo apt install samba
mkdir -p /home/<Username>/sambashare/
echo "[share]
    comment = Samba on Ubuntu
    path = /home/<USERNAME>/
    read only = no
    browsable = yes"
>> /etc/samba/smb.conf
sudo service smbd restart
sudo ufw allow samba
echo "please set password"
smbpasswd -a ubuntu


# Replace Username with your linux username 
