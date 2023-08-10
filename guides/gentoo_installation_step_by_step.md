# Gentoo Installation guide
## (liveUSB) (BTRFS) (EFI) (systemd)
- get root permissions (`sudo su` should work fine on most distros)
- make sure `vim` is installed

# partitioning (using cfdisk)
- `cfdisk`
- pick gpt
```
1G          EFI System
4/8/12/16G  Linux swap
rest        Linux filesystem
```
# formating 
- efi
```
mkfs.vfat -F 32 /dev/sda1
```
- swap
```
mkswap /dev/sda2
```
- btrfs
```
mkfs.btrfs /dev/sda3
```
- turn swap on
```
swapon /dev/sda2
```
- creating mounting point
```
mkdir --parents /mnt/gentoo
```
- mounting btrfs
```
mount /dev/sda3 /mnt/gentoo/
```
- check if it's mounted
```
df -h
```
# BTRFS subvolumes
- go to mounted btrfs partition
```
cd /mnt/gentoo
```
- create root subvolume
```
btrfs subvolume create @
```
- create home subvolume
```
btrfs subvolume create @home
```
- remount volumes
```
cd /
umount /mnt/gentoo
```
- mount root subvolume
```
mount -o subvol=@ /dev/sda3 /mnt/gentoo/
```
- mount home subvolume
```
mkdir /mnt/gentoo/home
mount -o subvol=@home /dev/sda3 /mnt/gentoo/home/
```
- check if it's mounted
```
df -h
```
# mounting boot partioton
- boot
```
mkdir /mnt/gentoo/boot
mount /dev/sda1 /mnt/gentoo/boot
cd /mnt/gentoo
```
# date setup
```
# pattern:
# date MMDDHHMMYYYY
date 080920472023
```
# stage 3 tarball
- open browser and go to https://www.gentoo.org/downloads 
- get systemd tarball
- move tarbal to /mnt/gentoo
- unpack it
```
tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner
```
# create make configuration
- open make.conf
```
vim ./etc/portage/make.conf
```
- change this line
```
COMMON_FLAGS="-O2 -pipe"
```
- to this line
```
COMMON_FLAGS="-march=native -O2 -pipe"
```
- add this line under flags 
```
FEATURES="candy parallel-fetch parallel-install"
```
- add this line under FEATURES(where j4 = 4 cores)
```
MAKEOPTS="-j4"
```
- and save changes
# configure repositories
- create repos.conf directory
```
mkdir --parents /mnt/gentoo/etc/portage/repos.conf
```
- copy gentoo repo configuration
```
cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf
```
- copy DNS info
```
cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
```
# mount filesystems
```
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --bind /run /mnt/gentoo/run
mount --make-slave /mnt/gentoo/run 
```
- if using non-gentoo installation iso type also this
```
test -L /dev/shm && rm /dev/shm && mkdir /dev/shm 
mount --types tmpfs --options nosuid,nodev,noexec shm /dev/shm 
chmod 1777 /dev/shm /run/shm
```
# Entering new environment
```
chroot /mnt/gentoo /bin/bash
source /etc/profile
export PS1="(chroot) ${PS1}"
```
# configure portage
- fetch the latest snapshot (which is released on a daily basis) from one of Gentoo's mirrors and install it onto the system
```
emerge-webrsync
```
- use the rsync protocol to update the Gentoo ebuild repository (which was fetched earlier on through emerge-webrsync) to the latest state. 
```
emerge --sync
```
- make sure you are on right profile
```
eselect profile list
eselect profile set X
```
- emerge vim
```
emerge vim
```
- edit make.conf
```
vim /etc/portage/make.conf
```
- add some use flags
```
USE="alsa systemd"
```
- update world set 
```
emerge --ask --verbose --update --deep --newuse @world
emerge -avUDN @world
```
- extra cpu flags
```
emerge --ask app-portage/cpuid2cpuflags
echo "*/* $(cpuid2cpuflags)" > /etc/portage/package.use/00cpu-flags
```
- add license to make.conf
```
ACCEPT_LICENSE="*"
```
# Locale and time
- find your timezone using this
```
ls /usr/share/zoneinfo
```
- set your timezone using this
```
ln -sf ../usr/share/zoneinfo/Europe/Warsaw /etc/localtime
```
- configure locale
```
vim /etc/locale.gen
# uncomment both en_US
```
- generate locale
```
locale-gen
```
- select locale
```
eselect locale list
eselect locale set X
```
- source changes
```
source /etc/profile
```
- update environment
```
env-update
```
# kernel
- install this if you have AMD CPU
```
emerge --ask sys-kernel/linux-firmware
```
- install this if you have Intel CPU
```
emerge --ask sys-kernel/linux-firmware
emerge --ask sys-firmware/intel-microcode
```
- install kernel binary
```
emerge --ask sys-kernel/gentoo-kernel-bin
```
# fstab
- get genfstab
```
emerge genfstab
```
- configure fstab
```
genfstab -U / >> /etc/fstab
```
- edit fstab to look something like this:
```
vim /etc/fstab
# /dev/sda1
UUID=somenumber     /boot   vfat    noauto,noatime              1 2
# /dev/sda2 
UUID=somenumber     none    swap    sw                          0 0 
# /dev/sda3
UUID=somenumber     /       btrfs   subvol=@,ssd,defaults       1 0
# /dev/sda3
UUID=somenumber     /home   btrfs   subvol=@home,ssd,defaults   0 0
```
# rest of the system
- hostname
```
echo "gentoo" > /etc/hostname
```
- network
```
emerge --ask net-misc/dhcpcd
systemctl enable --now dhcpcd 
systemctl enable dhcpcd 

```
- get informaiton about network
```
ifconfig
```
- edit config
```
vim /etc/conf.d/net

#it should look something like this
# where eno1 is your network
config_eno1="dhcp" 
```
- edit hosts
```
vim /etc/hosts
# add alias to make it look something like this:
127.0.0.1   gentoo-hardware localhost
```
- iff you don't care about secure passwords
```
vim /etc/security/passwdqc.conf
# change 
enforce=everyone
#to
enforce=none 
```
- root password
```
passwd
```
- systemd-firstboot
```
systemd-firstboot --prompt --setup-machine-id
systemctl preset-all --preset-mode=enable-only
```
# installing tools
- system tools
```
emerge --ask sys-apps/mlocate
emerge --ask app-shells/bash-completion
emerge --ask net-misc/chrony

systemctl enable chronyd.service

emerge sys-fs/btrfs-progs
emerge sys-fs/dosfstools

emerge --ask sys-block/io-scheduler-udev-rules
```
- networking tools
```
emerge --ask net-misc/dhcpcd
```
# configuring bootloader
```
echo 'GRUB_PLATFORMS="efi-64"' >> /etc/portage/make.conf
emerge --ask sys-boot/grub
grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg
```
# moment of truth
```
exit
cd 
umount -l /mnt/gentoo/dev{/shm,/pts,}
umount -R /mnt/gentoo
reboot
```
