# Raspberrypi w how to enable ssh without display
**When installing raspbian make sure you make root user and allow for connecting via SSH**

## Do this on sd card
- go to `/root/etc/wpa_supplicant/`
- remove old wpa_supplicant directory inside of it (`wpa_supplicant/wpa_supplicant` -> `wpa_supplicant/`)
- make conf file `/root/etc/wpa_supplicant/wpa_supplicant-wlan0.conf`
```conf
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=PL

network={
    ssid="NETWORK_NAME"
    psk="NETWORK_PASSWORD"
    key_mgmt=WPA-PSK
    scan_ssid=1
}
```
- enable login via root by openning `/root/etc/ssh/sshd_config`
- and adding line `PermitRootLogin yes`
