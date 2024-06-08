## Gentoo UEFI Systemd installation guide


## partitioning (using gnu parted) (in this case my disk is nvme0n1)
```
cfdisk /dev/nvme0n1
```
pick gpt
```
1G          EFI System (mark boot)
4/8/12/16G  Linux swap
rest        Linux filesystem
```

## formating partitions
FAT 32
```
mkfs.vfat -F 32 /dev/nvme0n1p1
```
EXT4
```
mkfs.ext4 /dev/nvme0n1p3
```
swap
```
mkswap /dev/nvme0n1p2
swapon /dev/nvme0n1p2
```

## mounting root
```
mount /dev/nvme0n1p3 /mnt/gentoo
```

## get stage3 tarball
use links browser and take amd64 systemd 
```
cd /mnt/gentoo
links https://distfiles.gentoo.org/releases/amd64/autobuilds

```
open last timestamp folder (these numbers) and take stage3 tarball by pressing 'd' key

## unpack stage3 tarball
you should be in /mnt/gentoo now
```
tar xpvf stage3tarballname --xattrs-include="*.*" --numeric-owner
```
## configure compile options
open make.conf
```
vi /mnt/gentoo/etc/portage/make.conf
```
make sure lines bellow looks like this (don't delete lines just modify and add)
```
COMMON_FLAGS="-march=native -O2 -pipe"

# If left undefined, Portage's default behavior is to:
# - set the MAKEOPTS jobs value to the same number of threads returned by `nproc`
# - set the MAKEOPTS load-average value slightly above the number of threads returned by `nproc`, due to it being a damped value
# Please replace '4' as appropriate for the system (min(RAM/2GB, threads), or leave it unset.
MAKEOPTS="-j6"
ACCEPT_LICENSE="*"
GRUB_PLATFORMS="efi-64" 
```
save and quit
## chrooting
select mirrors
```
mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf
# or add this to portage
GENTOO_MIRRORS="http://distfiles.gentoo.org"
```
copy repo configuration 
```
mkdir --parents /mnt/gentoo/etc/portage/repos.conf
cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf
```
copy dns info
```
cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
```
mount filesystem
```
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --bind /run /mnt/gentoo/run
mount --make-slave /mnt/gentoo/run 
```
chroot 
```
chroot /mnt/gentoo /bin/bash
```
## mount boot partition (uefi)
```
mkdir /efi
mount /dev/nvme0n1p1 /efi 
```
## emerge
sync
```
emerge-webrsync
```
update repositories
```
emerge --sync
```
update world set
```
emerge --ask --verbose --update --deep --newuse @world
```
get neovim
```
emerge neovim
```
## os configuration
timezone
```
ls -sf ../usr/share/zoneinfo/Europe/Warsaw /etc/localtime
```
mtab
```
ls -sf ../proc/self/mounts /etc/mtab
```
genereate locale
```
nvim /etc/locale.gen
# pick locale 
# just uncomment both en_US

locale-gen

eselect locale list

# select en_US utf-8  (X is nubmer)
eselect locale set X
```
update environment
```
env-update && source /etc/profile
```
## fstab
emerge genfstab
```
emerge genfstab
```
create fstab file
```
genfstab -U / >> /etc/fstab
```
edit
```
nvim /etc/fstab
# you can turn off wrapping with ":set nowrap"


#file should look like this at the end

# <fs>              <mountpoint>    <type>      <opts>      <dump>      <pass>
# /dev/vnme0n1p1
UUID=somenumber1    /efi            vfat        defaults    0           2

# /dev/vnme0n1p2
UUID=somenumber2    none            swap        sw          0           0

# /dev/vnme0n1p3
UUID=somenumber3    /               ext4        noatime     0           1
```
filesystem tools
```
emerge -q sys-fs/e2fsprogs sys-fs/dosfstools
```
## kernel
emerge sources
```
emerge --ask sys-kernel/gentoo-sources
```
check
```
ls -l /usr/src/linux
```
if it's empty just select kernel
```
eselect kernel list

eselect kernel set X 
# X is the number from list
```
emerge genkernel
```
emerge --ask sys-kernel/genkernel
```
configure and build kernel
```
genkernel --menuconfig all
# check support for systemd
# Gentoo Linux ---> Support For Init Systmes ... ---> [*] systemd 
# leave and touch grass. It will take about 0.5 h
```
install firmware
```
emerge -a sys-kernel/linux-firmware
```
## network
set hostname
```
echo "gentoo" > /etc/hostname
```
edit hosts
```
nvim /etc/hosts

# set it to be something like this
127.0.0.1       gentoo localhost
::1             localhost

```
set machine id
```
systemd-machine-id-setup
```
simple dhcp setup
```
nvim /etc/systemd/network/50-dhcp.network

#set it to be something like this:

[Match]
Name=en*

[Network]
DHCP=yes
```
enable network
```
systemctl enable systemd-networkd.service
```
enable default systemd services
```
systemctl preset-all
```
install dhpcp client
```
emerge --ask net-misc/dhcpcd
```
install wireless tools
```
emerge --ask net-wireless/iw net-wireless/wpa_supplicant
```
## bootloader
emerge grub2 
```
emerge -a -v sys-boot/grub:2
```
install grub
```
grub-install --target=x86_64-efi --efi-directory=/efi
```
make config
```
grub-mkconfig -o /boot/grub/grub.cfg
```
## Finalizing installation
```
passwd
```
exit and unmount 
```
exit
cd 
umount -l /mnt/gentoo/dev{/shm,/pts,}
umount -R /mnt/gentoo
```
reboot system to check if everything works fine
```
reboot
```
## TTY fonts and resolution
update grub resolution
```
nvim /etc/default/grub

GRUB_CMDLINE_LINUX_DEFAULT="quiet nosplash fbcon=nodefer"
# quiet nosplash
# remove boot noise

# fbcon=nodefer
# If the kernel is compiled with deferred fbcon takeover support, normally the framebuffer contents, 
# left in place by the firmware/bootloader, will be preserved until there actually is some text is output to the console. 
# This option causes fbcon to bind immediately to the fbdev device.

...

# set resolution
GRUB_GFXMODE=800x600
```
update grub config
```
grub-mkconfig -o /boot/grub/grub.cfg
```
emerge new font
```
emerge terminus-font
```
checking if font works
```
setfont ter-132n
```
edit file and add font
```
nvim /etc/vconsole.conf

KEYMAP=pl
FONT="ter-132n"
```

## create user and add persmissions
get sudo
```
emerge sudo
```
create user
```
useradd -mG wheel username
passwd username
```
edit sudoers file
```
nvim /etc/sudoers
```
uncomment this line
```
# %wheel ALL=(ALL) ALL
# should look like this at the end
%wheel ALL=(ALL) ALL
```
## desktop setup (i3 and my configs)
emerge some tools
```
emerge tmux dev-vcs/git fzf
```
get configuration for tmux
```
mkdir .config
git clone https://github.com/Talandar99/tmux_config.git ~/.config/tmux
```
open tmux for the first time 
```
tmux
# press alt and Q and then I to update it
```
udpate portage with X 
```
nvim /etc/portage/make.conf
# add this
USE="X"
```
update world set
```
emerge --ask --verbose --update --deep --newuse @world
```
get i3 
```
# most important stuff
emerge -a -q x11-base/xorg-server x11-wm/i3 
# configuraiton specific stuff
emerge -a -q x11-misc/i3blocks x11-misc/dunst x11-misc/rofi x11-misc/xcompmgr x11-terms/alacritty media-gfx/feh  
```

create .xinitrc configuraiton
```
nvim .xinitrc
exec dbus-launch i3
```
try if it works
```
startx
# you can exit witrh Shift+Alt+E 
```
get configuration
```
git clone https://github.com/Talandar99/i3_config ~/.config/i3
```
try if it works
```
startx
# you can exit with 
# Win+E to get into system mode
# q to quit
```
# TODO
firefox
add pulseaudio
