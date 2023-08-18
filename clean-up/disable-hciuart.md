# Disable hciuart (Bluetooth service)

This service is responsible for initializing Bluetooth on the Raspberry Pi. If you're not using any Bluetooth devices or functionalities with your Raspberry Pi, you can safely disable this service.

## Considerations

If you plan to use Bluetooth in the future, you'll need to re-enable this service.

## How to Disable

```sh
sudo systemctl disable hciuart
sudo systemctl stop hciuart
```
