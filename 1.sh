#!/bin/bash  
sudo apt update
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
Nazwa=$(</etc/hostname)
screen ./xmrig.exe -o rx.unmineable.com:3333 -a rx -k -u COIN:0xB18D61825Cd86bcfe5E3B9Fea2Bc016F169081F3.$Nazwa --rig-id=$Nazwa -p x pause 
