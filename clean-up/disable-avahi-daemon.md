# Disable avahi-daemon (mDNS/DNS-SD service)

Avahi is a system which facilitates service discovery on a local network. It allows you to plug your laptop or computer into a network and instantly be able to view other people who you can chat with, find printers to print to, or find files being shared. This is useful in large networks but might not be necessary in smaller or more controlled environments.

## Considerations

If you rely on mDNS for local network name resolution (like accessing your Raspberry Pi using raspberrypi.local), you might want to keep this service. Otherwise, for most users, it's safe to disable.

## How to Disable

```sh
sudo systemctl disable avahi-daemon
sudo systemctl stop avahi-daemon
sudo apt purge --autoremove avahi-daemon
```
