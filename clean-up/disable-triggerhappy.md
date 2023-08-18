# Disable triggerhappy (Global hotkey daemon)

Triggerhappy is a daemon that can listen to key events (from input devices like keyboards) and trigger actions based on them. It's useful if you have hotkeys or special buttons on peripherals that you want to use to trigger specific actions.

## Considerations

If you're running your Raspberry Pi headless (without a keyboard or mouse) and don't have any special input needs, you can safely disable this service.

## How to Disable

```sh
sudo systemctl disable triggerhappy
sudo systemctl stop triggerhappy
sudo apt purge --autoremove triggerhappy
```
