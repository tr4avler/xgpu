#!/bin/bash

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x60a66f137D8d90Db37CB0078E5624C57911d2804/g' config.conf
sleep 5
echo "---------------------------"

# Install Python requirements

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 5
echo "---------------------------"



