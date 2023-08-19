# Raspberry Pi Setup Guide

## Prerequisites

1. **Hardware**
   - A Raspberry Pi (any model, but the setup might vary slightly depending on the version, im using model 3).
   - Micro SD card (8GB or larger recommended).
   - Micro SD card reader (for flashing the OS onto the SD card from another computer).
   - (Optional) Monitor or TV with HDMI input.
   - (Optional) HDMI cable (micro or mini HDMI might be required for some Raspberry Pi models).
   - (Optional) Ethernet cable for a wired network connection.

2. **Software**
   - Software for flashing the OS onto the SD card [Raspberry Pi Imager](https://www.raspberrypi.org/software/).

## Pre-Setup

In the Rasperry PI Imager an OS can be selected for the installation. Under the point "Other" the Rasperry Pi OS Lite can be selected (which I would recommend, everything desktop similar only draws unnecessary performance).

Under the settings in the imager, hostname and account can be pre-configured, as well as the WLAN settings so that initially a connection to the network is possible, alternatively an ethernet cable can be used to connect to the local network.

I would recommend setting up the Rasperry PI via an SSH program, the tool of my choice [Bitvise SSH Client](https://www.bitvise.com/download-area) (Of course the setup can also be done on the Rasperry PI itself by connecting a keyboard and a monitor).
The IP of the Rasperry PI should be in its log after it has started. Alternatively you can get the IP from your locale network, normally you should be able to access the Locale WebPanel via [192.168.1.1](http://192.168.1.1) which should allow you to see all network devices.

## Setup

If you have a Raspberry PI with low RAM, you can read [Clean Up](https://github.com/fokklz/rasperry-pi-hole/tree/main/clean-up) to disable unnecessary services for this scenario and free up more memmory on your device.

Install Docker and add your Pi-User to the docker Group to allow executing Docker
```sh
curl -sSL https://get.docker.com/ | sudo CHANNEL=stable sh
sudo usermod -aG docker $USER
sudo systemctl restart docker
```
*You should restart the SSH Session to allow your changes to take effect if your not using SSH just use `sudo reboot`*
