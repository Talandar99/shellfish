# Gentoo Installation guide
## Requirements
- any live cd distro
- internet
- vim
## Installation
#### Preparations
- make sure that you have internet connection
```
ping -c 3 gentoo.org
```
- become root
- check disks
```
fdisk -l
```
- in this guide disk is /dev/sda
- wipe old filesystem
```
wipefs -a /dev/sda
```
#### Partitioning Using Parted
- enter parted
```
parted -a optimal /dev/sda
```
- set label and unit 
```
mklabel gpt
unit mib
```
- boot and grub partitions
```
mkpart primary 1 3
mkpart 1 grub
set 1 bios_grub on
mkpart praimary 3 131
name 2 boot

```
- swap
```
mkpart primary 131 4227
name 3 swap
```
- main
```
mkpart primary 4227 -1
name 4 rootfs
```
- check if everything is fine 
```
print
```
- write and quit parted
```
write
quit
```
- check again if everything is fine
```
lsblk
```
#### Format and mount partitions
- boot
```
mkfs.fat -F 32 /dev/sda2
```
- swap
```
mkswap /dev/sda3
swapon /dev/sda3
```
- main
```
mkfs.ext4 /dev/sda4
```
- prepare directory
```
mkdir -r /mnt/gentoo
```
- mount 
```
mount /dev/sda4 /mnt/gentoo
```
- enter mounted partition
```
cd /mnt/gentoo
```
#### check if date is correct
```
date
```
- if it's not fix it with something like this 
- example (18-05-2023 21:37)
```
date 180521372023
```
#### Stage 3 preparation (tarball)
- download stage 3 taball
- you can get it here https://www.gentoo.org/downloads/
- use wget followed by link
```
wget https://this.is.your.link
```
- unpack it
```
tar xpvf stage3-restoftarbalname --xattrs-include='*.*' --numeric-owner
```
- remove tarball
```
rm -rf stage3-restoftarbalname
```
#### create configuration
- create/edit make.conf
```
vim etc/make.conf
```
- portage
```
mkdir --parents etc/portage/repos.conf
cp usr/share/portage/config/repos.conf etc/portage/repos.conf/gentoo.conf
cp dereference /etc/resolv.conf etc/
```
#### chroot
- mount 
```
mount --types proc /proc proc/
mount --rbind /sys sys
mount --make-rslave sys
mount --rbind /dev/ dev
mount --make-rslave dev
```
- chroot 
```
chroot /mnt/gentoo /bin/bash
```
- in gentoo 
```
source /etc/profile
```
### gentoo installation stage 3
```
mount /dev/sda2 /boot
```
```
emerge-webrsync
```
- fix if can't emerge
```
vim /etc/portage/make.conf
```
- or move make.conf to correct location
```
mv /etc/make.conf /etc/portage/make.conf
```
- select profile that you are using
```
eselect profile list
```
### First emerge
- update system for first time
```
emerge --verbose --update --deep --newuse @world
```
- emerge the best text editor
```
emerge -q app-editors/vim
```

### setting timezone/locale
- update timezone
```
echo "Europe/Warsaw" > /etc/timezone

```
- emerge timezone
```
emerge --config sys-libs/timezone-data
```
- make sure you are at right locale
```
eselect locale list
```
- add US locale
```
vim /etc/locale.gen
# add line bellow
en_US.UTF-8 UTF-8 
```
- generate locale
```
locale-gen
```
- select locale
```
eselect locale list
```
```
eselect locale set 4
```
- update enviroment
```
env-update && source /etc/profile
```
### emerge few more things
- gentoo-sources
```
emerge -q --autounmask-continue sys-kernel/gentoo-sources genkernel
```
- pciutils (in general for graphics card)
```
emerge -q sys-apps/pciutils
```
- compression algorithms for compressing kernel
```
emerge -q app-arch/lzop app-arch/lz4
```
### configuring the kernel
```
cd /usr/src/linux
```
```
make menuconfig
# remember to save after you finish
```
### making kernel
- compile
```
make && make modules_install && make install 
```
- create initramfs
```
genkernel --install --kernel-config=/usr/src/linux/.config initramfs
```
- check if it's there
```
ls /boot/initramfs*
```
### web configuration
- hostname
```
vim /etc/conf.d/hostname
```
```
emerge --noreplace --quiet net-misc/netifrc
```
- check what network card you have
```
ifconfig
```
- adding network card
```
vim /etc/conf.d/net
```
```
# add this string to file
config_yourcardname="dhcp"
```
- emerge dhcpcd
```
emerge net-misc/dhcpcd
```
- change directory
```
cd /etc/init.d
```
- create symlink
```
ln -s net.lo net.yourcardname
```
- add starting ad boot
```
rc-update add net.yourcardname default
```

### boot configuration
- IF YOU HAVE UEFI SYSTEM MAKE SURE YOU HAVE THIS LINE 
```
GRUB_PLATFORMS="efi-64"
```
inside the `/etc/portage/make.conf`
- get UUIDs (save somewhere for later, you will need them)
```
blkid -s UUID -o value /dev/sda2
blkid -s UUID -o value /dev/sda3
blkid -s UUID -o value /dev/sda4
```
- emerge grub
```
emerge --verbose sys-boot/grub:2
```
- install grub(for efi)
```
grub-install --target=x86_64-efi --efi-directory=/boot
```
- if you don't see `No error reported then you fucked up`
- make grub config file
```
grub-mkconfig -o /boot/grub/grub.cfg
```
- edit fstab
```
vim /etc/fstab
```
- add UUID to fstab 
```
# add UUIDs saved before (this one is for efi)
yourUUIDforsda2    /boot/efi    vfat    defaults    0    2
yourUUIDforsda3    none         swap    sw          0    0
yourUUIDforsda4    /            ext4    noatime     0    1
```

### setting up SUDO
```
emerge -q app-admin/sudo
```
- edit sudoers file (look around line 70)
```
vim /etc/sudoers
```
### setting up window manager 
```
TODO
```
