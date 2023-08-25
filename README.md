# Raspberry Pi Setup Guide

## Prerequisites

1. **Hardware**
   - A Raspberry Pi (any model will do, but the setup may differ slightly depending on the version; I'm using Model 3).
   - Micro SD card (recommended size is 8GB or larger).
   - Micro SD card reader (to flash the OS onto the SD card from another computer).
   - Monitor or TV with HDMI input.
   - USB keyboard for input.
   - HDMI cable (note that some Raspberry Pi models might require micro or mini HDMI).
   - (Optional) Ethernet cable for a wired network connection.

2. **Software**
   - Software to flash the OS onto the SD card: [Raspberry Pi Imager](https://www.raspberrypi.org/software/).

## Pre-Setup

Inside the [Raspberry Pi Imager](https://www.raspberrypi.org/software/), select [Rasperry OS Lite (x32)](https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2023-05-03/2023-05-03-raspios-bullseye-armhf-lite.img.xz) from the "Other" section to install it on your micro SD card. Before flashing the image, configure the following settings:

**Hostname**: pi-hole.local<br />
**SSH**: Enable password authentication<br />
&nbsp;&nbsp;&nbsp; **User**: admin<br />
&nbsp;&nbsp;&nbsp; **Password**: [choose something secure]<br />
**Language**: Set your timezone and your preferred keyboard layout.

Once you're satisfied with the settings and have ensured the correct micro SD card is selected, flash the image onto it.

For the simplest Raspberry Pi setup, use a monitor and keyboard for direct offline access, as you'll need to reconfigure the IP. *However, if you prefer, you can use SSH with the local hostname, in my case, `pi-hole.local`.*

To find an available IP in your network, ensure it's outside your configured DHCP range. Typically, IPs between 2-50 are free. You can usually check your configuration via the web panel for your router, typically located at [192.168.1.1](http://192.168.1.1).

## Setup

*I've modified the [original](https://github.com/pi-hole/pi-hole/blob/master/automated%20install/basic-install.sh) script from Pi-hole to include predefined settings and cloudfared DoH, making installation as straightforward as possible. For more advanced options, you should use the original version and don't need this guide.*

```sh
wget -O basic-install.sh https://pi-hole.flz.ink
sudo PIHOLE_IP=192.168.1.5 bash ./basic-install.sh
```

## Post-Setup

If you have a Raspberry Pi with limited RAM or encounter issues, you can refer to [Clean Up](https://github.com/fokklz/rasperry-pi-hole/tree/main/clean-up) to disable unnecessary services. This will free up more memory on your device.

## Support

If you enjoy using Pi-hole, consider [donating](https://pi-hole.net/donate/#donate).