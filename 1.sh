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
screen ./xmrig -o rx.unmineable.com:3333 -a rx -k -u DOGE:DGSXHw3Kn6nbFayas33qx2PAwhHTPnKtCz.$Nazwa#4qbt-m9nb --rig-id=$Nazwa -p x pause
