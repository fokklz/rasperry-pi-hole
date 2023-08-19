#!/bin/bash

echo "Raspberry Pi Cleanup Script"
echo "---------------------------"
echo "This script will prompt you to disable various services. Please answer with 'y' or 'n'."

disable_avahi() {
    sudo systemctl disable avahi-daemon
    sudo systemctl stop avahi-daemon
    sudo apt purge --autoremove avahi-daemon
    echo "avahi-daemon (mDNS/DNS-SD service) has been disabled and removed."
}

disable_hciuart() {
    sudo systemctl disable hciuart
    sudo systemctl stop hciuart
    echo "hciuart (Bluetooth service) has been disabled."
}

disable_swapfile() {
    sudo systemctl disable dphys-swapfile
    sudo systemctl stop dphys-swapfile
    sudo dphys-swapfile swapoff
    sudo dphys-swapfile uninstall
    sudo update-rc.d dphys-swapfile remove
    echo "dphys-swapfile (Swap file service) has been disabled and removed."
}

disable_triggerhappy() {
    sudo systemctl disable triggerhappy
    sudo systemctl stop triggerhappy
    sudo apt purge --autoremove triggerhappy
    echo "triggerhappy (Global hotkey daemon) has been disabled and removed."
}

read -p "Would you like to disable avahi-daemon (mDNS/DNS-SD service)? (y/n): " choice
if [ "$choice" == "y" ]; then
    disable_avahi
fi

read -p "Would you like to disable hciuart (Bluetooth service)? (y/n): " choice
if [ "$choice" == "y" ]; then
    disable_hciuart
fi

read -p "Would you like to disable dphys-swapfile (Swap file service)? (y/n): " choice
if [ "$choice" == "y" ]; then
    disable_swapfile
fi

read -p "Would you like to disable triggerhappy (Global hotkey daemon)? (y/n): " choice
if [ "$choice" == "y" ]; then
    disable_triggerhappy
fi

echo "Cleanup script completed."
