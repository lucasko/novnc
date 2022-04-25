#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
#wget http://mirror.centos.org/centos/7/updates/x86_64/Packages/tigervnc-1.8.0-22.el7.x86_64.rpm
#yum -y install /tmp/tigervnc-1.8.0-22.el7.x86_64.rpm
yum install -y tigervnc-server
yum clean all
