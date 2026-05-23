#!/bin/bash
# Multi-User Server Setup
# Author: Your Name

echo "Creating groups..."
sudo groupadd developers
sudo groupadd marketing
sudo groupadd staff

echo "Creating users..."
sudo useradd -m -G developers alice
sudo useradd -m -G developers bob
sudo useradd -m -G marketing carol
sudo useradd -m -G marketing dave

echo "Adding all users to staff..."
sudo usermod -aG staff alice
sudo usermod -aG staff bob
sudo usermod -aG staff carol
sudo usermod -aG staff dave

echo "Creating directory structure..."
sudo mkdir -p /company/{dev,marketing,shared}

echo "Setting permissions..."
sudo chown root:developers /company/dev
sudo chmod 770 /company/dev

sudo chown root:marketing /company/marketing
sudo chmod 770 /company/marketing

sudo chown root:staff /company/shared
sudo chmod 1775 /company/shared

echo "Done! Run 'ls -la /company' to verify."
