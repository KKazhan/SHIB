#!/bin/bash  
cd /home/ubuntu
sudo apt -y update
sudo apt -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
Nazwa=$(</etc/hostname)
screen ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u SHIB:0xB18D61825Cd86bcfe5E3B9Fea2Bc016F169081F3.unmineable_worker_jxidxssd#fl91-7wm1 -p x  --rig-id=$Nazwa
