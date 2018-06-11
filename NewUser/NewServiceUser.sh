#add service group/user
groupadd <group>
useradd -m -p <password> -s /bin/bash -g <group> <user>
gpasswd -a <user> sudo #allowing sudo requires password
gpasswd -a <user> wheel
mkdir /home/<user>/.ssh
chmod 700 /home/<user>/.ssh
cat /home/opc/.ssh/authorized_keys >> /home/<user>/.ssh/authorized_keys
chown <user>:<group> /home/<user> -R
