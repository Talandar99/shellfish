# Partitioning
## Check where your sd card is
```bash
lsblk
```
in my case it's sdc

## if it's mounted unmount it
```bash
sudo umount /dev/sdc1
sudo umount /dev/sdc2
```
## Getting and burning image
```bash
# create dir
mkdir ~/Downloads/debian
cd ~/Downloads/debian
# get deez nuts
wget https://raspi.debian.net/tested/20231109_raspi_1_bookworm.img.xz
# unpack
xz -d 20231109_raspi_1_bookworm.img.xz
# burn image
sudo dd if=20231109_raspi_1_bookworm.img of=/dev/sdc bs=4M oflag=sync status=progress
sudo sync
```
## Mounting
```bash
sudo mkdir -p /mnt/debian/{boot,root}

sudo mount /dev/sdc1 /mnt/debian/boot
sudo mount /dev/sdc2 /mnt/debian/root

# check
lsblk
```
## QEMU
```bash
# edit /etc/package/package.use/qemu
# add this:

# ------------------------------------------------------------
# Enable static-user and add the aarch64 target
app-emulation/qemu static-user QEMU_SOFTMMU_TARGETS: aarch64 arm QEMU_USER_TARGETS: aarch64 arm
# required by app-emulation/qemu::gentoo[static,static-user]
# required by qemu (argument)
dev-libs/glib static-libs
# required by app-emulation/qemu::gentoo[-static,static-user]
# required by qemu (argument)
sys-libs/zlib static-libs
# required by app-emulation/qemu::gentoo[-static,static-user,xattr]
# required by qemu (argument)
sys-apps/attr static-libs
# required by dev-libs/glib::gentoo
# required by app-emulation/qemu::gentoo[-static,static-user]
# required by qemu (argument)
dev-libs/libpcre2 static-libs
# ------------------------------------------------------------
#rebuild qemu
sudo emerge -q --update --newuse app-emulation/qemu

#link binfmt
ln -s /usr/share/qemu/binfmt.d/qemu.conf /etc/binfmt.d/qemu.conf

sudo nvim /etc/binfmt.d/qemu-arm-static.conf
# add this:
# ------------------------------------------------------------
:arm:M::\x7fELF\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00:\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-arm:
# ------------------------------------------------------------
systemctl restart systemd-binfmt
systemctl status systemd-binfmt
```
## Chrooting
```bash

# install arch-chroot
emerge arch-chroot -q
#copy qemu to new environment
sudo cp /usr/bin/qemu-arm /mnt/debian/root/usr/bin
# bind dns settings from host
sudo touch /mnt/debian/root/etc/resolv.conf
sudo chmod 644 /mnt/debian/root/etc/resolv.conf
sudo mount --bind /etc/resolv.conf /mnt/debian/root/etc/resolv.conf
# chroot
sudo arch-chroot /mnt/debian/root 
#you can check if you are on arm
lscpu | grep "Architecture"
```
## after chrooting (SSH & connecting to wifi automaticly)
```bash
# update and install bettter package manager
apt update; apt upgrade; apt install nala
# install superior editor
nala remove nano -y ; nala install neovim -y
# install stuff
nala install -y wpasupplicant dhcpcd5 openssh-server

```
### WPA supplicant configuration
```bash
nvim /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
# add this:
# ------------------------------------------------------
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="YOUR_SSID"
    psk="YOUR_PASSWORD"
    key_mgmt=WPA-PSK
    scan_ssid=1
}
# ------------------------------------------------------
chmod 600 /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
chown root:root /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
```
### Enable needed services
```bash
# supplicant
systemctl enable wpa_supplicant@wlan0.service
# dhcpcd5 & network
systemctl enable dhcpcd.service
systemctl enable systemd-networkd
# ssh
systemctl enable ssh.service
```
### Finishing touches
```bash
#add root password
passwd
#enable to login as root via ssh (optional, not safe but convinient)
nvim /etc/ssh/sshd_config
# ------------------------------------------------------
# add this
PermitRootLogin yes
# in 
# Authentication: 
#section
# ------------------------------------------------------
```
### Docker (optional)
```bash
nala install docker docker-compose -y
systemctl enable docker
```
## unmount and flash into raspberry
```bash
#exit chroot
exit
#unmount
sudo umount -l /mnt/debian/boot
sudo umount -l /mnt/debian/root
```
