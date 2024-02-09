#!/bin/bash

# Update package list and install necessary packages

# Install Python packages
echo "Installing Python packages..."
pip install requests
sleep 3
echo "---------------------------"

pip install eth-utils
sleep 3
echo "---------------------------"

pip install paramiko
sleep 3
echo "---------------------------"

pip install prettytable
sleep 3
echo "---------------------------"

pip install flask
sleep 3
echo "---------------------------"

pip install flask-socketio
sleep 3
echo "---------------------------"

# Install system packages
echo "Installing system packages..."
# Replace 'sudo apt-get install' with the appropriate package manager command for your system if not using apt-get
sudo apt-get update
sleep 3
echo "---------------------------"

sudo apt-get install -y python3-dev python3-pip
sleep 3
echo "---------------------------"

sudo apt-get install -y libssl-dev libffi-dev
sleep 3
echo "---------------------------"

sudo apt-get install -y build-essential
sleep 3
echo "---------------------------"

sudo apt-get install -y curl
sleep 3
echo "---------------------------"

sudo apt-get install -y git
sleep 3
echo "---------------------------"

# Clone the repository and build the project
echo "Cloning the repository and building the project..."
wget https://github.com/tr4avler/XENBLOCK_vast_tool.git
sleep 3
echo "---------------------------"

cd XENBLOCK_vast_tool
sleep 3
echo "---------------------------"

sudo python3 app.py
sleep 3
echo "---------------------------"

echo "Installation complete."
