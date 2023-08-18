# Raspberry Pi Cleanup Guide

This guide provides steps to clean up and optimize your Raspberry Pi for running Docker containers, especially for Pi-hole.

**BEFORE U DISABLE ANY SERVICE READ THE CONSIDERATIONS FOR IT**

| Service          | Short Description                               | Guide                                                                                                            |
|------------------|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| hciuart          | Bluetooth initialization service                | [disable-hciuart.md](https://github.com/fokklz/rasperry-pi-hole/blob/main/clean-up/disable-hciuart.md)           |
| avahi-daemon     | Local network service discovery                 | [disable-avahi-daemon.md](https://github.com/fokklz/rasperry-pi-hole/blob/main/clean-up/disable-avahi-daemon.md) |
| triggerhappy     | Global hotkey management                        | [disable-triggerhappy.md](https://github.com/fokklz/rasperry-pi-hole/blob/main/clean-up/disable-triggerhappy.md) |
| dphys-swapfile   | Swap file management for virtual memory         | [disable-swap-file.md](https://github.com/fokklz/rasperry-pi-hole/blob/main/clean-up/disable-swap-file.md)       |

## Assistance

these guides have been checked by GPT for wrong statements. [View Result](https://chat.openai.com/share/16d4a7fa-4150-429c-82cb-17d7bc0e9675)
