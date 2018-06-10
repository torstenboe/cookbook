#add service group/user
addgroup my-service
useradd my-user --create-home --shell /bin/bash --groups my-service
#gpasswd -a devops-service sudo #allowing sudo requires password, and not a good idea for a service account.
mkdir /home/my-user/.ssh
chmod 700 /home/my-user/.ssh
cat my-user@v2-20150312.pub >> /home/my-user/.ssh/authorized_keys
chown my-user:my-user /home/my-user -R
