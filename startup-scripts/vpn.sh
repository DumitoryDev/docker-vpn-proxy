#!bin/sh

echo "Start vpn service..."
zerotier-one -d
sleep 2

echo "Connect to host $1...."
zerotier-cli join $1 && sleep 2 && zerotier-cli info && zerotier-cli listnetworks





