#!/bin/bash

sudo systemctl disable avahi-daemon
sudo systemctl stop avahi-daemon
sudo apt purge --autoremove avahi-daemon

echo "avahi-daemon has been disabled and removed."
