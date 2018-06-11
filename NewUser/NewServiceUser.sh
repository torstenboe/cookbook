#add service group/user
groupadd <group>
useradd -m -p <password> -s /bin/bash -g my-service <user>
#gpasswd -a <user> sudo #allowing sudo requires password, and not a good idea for a service account.
mkdir /home/<user>/.ssh
chmod 700 /home/<user>/.ssh
cat /home/opc/.ssh/authorized_keys >> /home/<user>/.ssh/authorized_keys
chown <user>:<user> /home/<user> -R
