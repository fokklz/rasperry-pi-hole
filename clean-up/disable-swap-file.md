# Disable dphys-swapfile (Swap file service)

This service manages the swap file on the Raspberry Pi. A swap file allows the system to use disk space as "virtual memory" when the RAM is full. Data that's not actively being used can be "swapped" out to this disk space and then "swapped" back into RAM when needed.

## Considerations

Disabling swap can be beneficial for performance and the lifespan of SD cards (since SD cards have limited write cycles). However, if your system runs out of RAM without a swap, processes might be killed to free up memory. If you have a Raspberry Pi model with 1GB of RAM or less, you might want to consider keeping a small swap. For models with 2GB or 4GB, it's generally safe to disable, especially if you're monitoring usage and know your workload.

## How to Disable
```sh
sudo systemctl disable dphys-swapfile
sudo systemctl stop dphys-swapfile
sudo dphys-swapfile swapoff
sudo dphys-swapfile uninstall
sudo update-rc.d dphys-swapfile remove
```
