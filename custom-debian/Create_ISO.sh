#!/bin/bash
# Explain: Quickly generate custom Debian ISO scripts
# Author: Huangjinqiang
# Email: 1369809687qq.com

Dir=/myiso

apt install simple-cdd -y

[ -d $Dir ] || mkdir $Dir && cd $Dir 

cp -r /root/profiles ./
chmod +x /myiso/profiles/Custom.postinst

build-simple-cdd --debug --force-root --conf profiles/Custom.conf