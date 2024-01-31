# Gentoo Installation guide
## (liveUSB) (BTRFS) (EFI) (systemd)
- get root permissions (`sudo su` should work fine on most distros)
- make sure `vim` is installed

## test connection
```
ping gentoo.org
```

## set timedate ntp
```
timedatectl set-ntp true
```
## check drives
```
lsblk
```
## setup partitions
- create `efi`,`swap` and `filesystem` partitions
- use `gdisk`
```
gdisk /dev/sda
```
- new partiton EFI
```
n
```
- default first sector is fine {PRESS ENTER}
- set last sector to 300M
```
+300M 
```
- code for efi is
```
ef00
```
- new partiton SWAP
```
n
```
- default first sector is fine {PRESS ENTER}
- last sector should be at least half of your ammount of ram, soo in my case
```
+4G
```
- code for SWAP is
```
8200
```
- new partiton filesystem 
```
n
```
- default first sector is fine {PRESS ENTER}
- default last sector is fine {PRESS ENTER}
- default linux filesystem is fine {PRESS ENTER}
- write all changes
```
w
```
## format partitons 
- format efi (fat32)
```
mkfs.fat -F32 /dev/sda1
```
- format filesystem (btrfs)
```
mkfs.btrfs /dev/sda3
```
- make swap (swap)
```
mkswap /dev/sda2
```
- activate swap
```
swapon /dev/sda2
```
- creating mounting point
```
mkdir --parents /mnt
```
- mounting btrfs
```
mount /dev/sda3 /mnt/
```
- check if it's mounted
```
df -h
```
## create BTRFS subvolumes
- mount partition with BTRFS
```
mount /dev/sda3 /mnt
```
- create root subvolume
```
btrfs su cr /mnt/@
```
- create home subvolume
```
btrfs su cr /mnt/@home
```
- create snapshots subvolume
```
btrfs su cr /mnt/@snapshots
```
- create var_log subvolume
```
btrfs su cr /mnt/@var_log
```
- unmount partition with BTRFS
```
unmount /mnt 
```
## mount everything in place
- mount root subvolume
```
mount -o noatime,compress=lzo,space_cache=v2,subvol=@ /dev/sda3 /mnt
```
- create needed directories
```
mkdir -p /mnt/{boot,home,.snapshots,var_log}
```
- mount home subvolume
```
mount -o noatime,compress=lzo,space_cache=v2,subvol=@home /dev/sda3 /mnt/home
```
- mount snapshot subvolume
```
mount -o noatime,compress=lzo,space_cache=v2,subvol=@snapshots /dev/sda3 /mnt/.snapshots
```
- mount var_log subvolume
```
mount -o noatime,compress=lzo,space_cache=v2,subvol=@var_log /dev/sda3 /mnt/var_log
```
- mount efi partition
```
mount /dev/sda1 /mnt/boot
```
- check if everything looks fine
```
lsblk
```
# stage 3 tarball
- open browser and go to https://www.gentoo.org/downloads 
- get systemd tarball
- move tarbal to `/mnt`
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
mkdir --parents /mnt/etc/portage/repos.conf
```
- copy gentoo repo configuration
```
cp /mnt/usr/share/portage/config/repos.conf /mnt/etc/portage/repos.conf/gentoo.conf
```
- copy DNS info
```
cp --dereference /etc/resolv.conf /mnt/etc/
```
## generate filesystem table (fstab)
```
genfstab -U /mnt >> /mnt/etc/fstab
```
# mount filesystems
```
mount --types proc /proc /mnt/proc
mount --rbind /sys /mnt/sys
mount --make-rslave /mnt/sys
mount --rbind /dev /mnt/dev
mount --make-rslave /mnt/dev
mount --bind /run /mnt/run
mount --make-slave /mnt/run 
```
- if using non-gentoo installation iso type also this
```
test -L /dev/shm && rm /dev/shm && mkdir /dev/shm 
mount --types tmpfs --options nosuid,nodev,noexec shm /dev/shm 
chmod 1777 /dev/shm /run/shm
```
# Entering new environment
```
chroot /mnt /bin/bash
source /etc/profile
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
# setup basic stuff
- find your timezone using this
```
ls /usr/share/zoneinfo
```
- setup timezone (Poland in my case)
```
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
```
- synchronize hardware clock and system clock
```
hwclock --systohc
```
- open gen file and setup locale
```
nvim /etc/locale.gen 
```
- uncomment
```
en_US.UTF
en_US ISO
```
- generate locale
```
locale-gen
```
- open locale conf
```
nvim /etc/locale.conf
```
- update locale.conf by adding 
```
LANG=en_US.UTF-8
```
- update hostname
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
- if you don't care about secure passwords
```
vim /etc/security/passwdqc.conf
# change 
enforce=everyone
#to
enforce=none 
```
- update root password
```
passwd root
```
- source changes
```
source /etc/profile
```
- update environment
```
env-update
```
- systemd-firstboot
```
systemd-firstboot --prompt --setup-machine-id
systemctl preset-all --preset-mode=enable-only
```
--------------------------------------------------
-----------------------TODO-----------------------
i think i will need to customize kernel
--------------------------------------------------
## setup grub and networkmanager
- get packages
```
pacman -S grub efibootmgr networkmanager network-manager-manager-applet dialog wpa_supplicant mtools dosfstools reflector snapper blue bluez-utils xdg-utils xdg-user-dirs alsa-utils pulseaudio pulseaudio-bluetooth inetutils linux-headers bash-completion
```
- open mkinitcpio config
```
nvim /etc/mkinitcpio.conf 
```
- change line 
```
MODULES=()
```
- to something like this
```
MODULES=(btrfs)
```
- regenerate kernel image with btrfs module
```
mkinitcpio -p linux
```
- install grub 
```
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
```
- generate configuration file for grub 
```
grub-mkconfig -o /boot/grub/grub.cfg
```
## enable basic things
- networkmanager
```
systemctl enable NetworkManager
```
- bluetooth
```
systemctl enable bluetooth
```
## create user and add persmissions
- create user
```
useradd -mG wheel username
passwd username
```
- edit sudoers file
```
nvim /etc/sudoers
```
- uncomment this line
```
# %wheel ALL=(ALL) ALL
```
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
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
umount -l /mnt/dev{/shm,/pts,}
umount -R /mnt
reboot
```

--------------------------------------------------
----------------------TODO------------------------
--------------------------------------------------
## adding keymap
- find your keymap (i am looking for pl)
```
localectl list-keymaps | grep pl
```
- open keymap
```
sudo nvim /etc/vconsole.conf
```
- add your keymap
```
KEYMAP=yourkeymap
```
## snapshots configuration
- unmount snapshots directory
```
sudo umount /.snapshots
```
- remove snapshots directory
```
sudo rm -r /.snapshots 
```
- create snapper configuration for root
```
sudo snapper -c root create-config /
```
- creating configuraiton subvolume for thing we already have so we remove it
```
sudo btrfs subvolume delete /.snapshots
```
- recreate .snapshots directory
```
sudo mkdir /.snapshots
```
- remount 
```
sudo mount -a
```
- change permissions for snapshots directory
```
sudo chmod 750 /.snapshots
```
- open snapper configuration file
```
sudo nvim /etc/snapper/configs/root
```
- add yourself to allowed users
```
# users and groups allowed to work with config
ALLOW_USERS="yourusername"
```
- change limit for timeline cleanup
```
# limits for timeline cleanup
TIMELINE_MIN_AGE="1800"
TIMELINE_LIMIT_HOURLY="5"
TIMELINE_LIMIT_DAILY="7"
TIMELINE_LIMIT_WEEKLY="0"
TIMELINE_LIMIT_MONTHLY="0"
TIMELINE_LIMIT_YEARLY="0"
```
- enable timeline and cleanup
```
sudo systemctl enable --now snapper-timeline.timer
sudo systemctl enable --now snapper-cleanup.timer
```
- install packages from AUR
```
paru -S snap-pac-grub snapper-gui 
```
- install rsync using pacman
```
sudo pacman -S rsync
```
- create hooks
```
sudo mkdir /etc/pacman.d/hooks
sudo nvim /etc/pacman.d/hooks/50-bootbackup.hook
```
```
[Trigger]
Operation = Upgrade
Operation = Install
Operation = Remove
Type = Path
Target = boot/*

[Action]
Depends = rsync
Description = Backing up /boot...
When = PreTransaction
Exec = /usr/bin/rsync -a --delete /boot /.bootbackup
```
- change permissions of the snapshots folder
```
sudo chmod a+rx /.snapshots 
sudo chown :username /.snapshots
```
- open mkinitcpio config
```
sudo nvim /etc/mkinitcpio.conf
```
- remove fsck hook
```
HOOKS=(...,fsck)
```
- regenerate kernel image 
```
sudo mkinitcpio -p linux
```

## install i3 wm
- get packages
```
sudo pacman -S xorg-server xorg-apps xorg-xinit i3-wm i3blocks dunst flameshot palyerctl rofi pamixer feh xclip xcompmgr alacritty firefox ttf-font-awesome ttf-firacode-nerd
paru -S betterlockscreen 
```
- crate config directory
```
mkdir ~/.config
```
- get config
```
https://github.com/Talandar99/i3_config.git ~/.config/i3
```
- create file .xinitrc in home dir
```
nvim ~/.xinitrc
```
- Add line:
```
exec i3
```
- launch i3 and have fun
```
startx
```
