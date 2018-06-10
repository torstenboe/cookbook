#add service group/user
addgroup service-runner
useradd devops-service --create-home --shell /bin/bash --groups service-runner
#gpasswd -a devops-service sudo #allowing sudo requires password, and not a good idea for a service account.
mkdir /home/devops-service/.ssh
chmod 700 /home/devops-service/.ssh
cat devops-service@v2-20150312.pub >> /home/devops-service/.ssh/authorized_keys
chown devops-service:devops-service /home/devops-service -R
