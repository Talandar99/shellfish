# Arch Linux EFI BTRFS Installation + Desktop 

# Let's go :D
## launch archlinux USB image
## test connection
```
ping arch.org
```

## set timedate ntp
```
timedatectl set-ntp true
```
## use reflector to update mirrors (Poland in my case)
```
reflector -c Poland -a 6 --sort rate --save /etc/pacman.d/mirrorlist
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
## install base packages using pacstrap
- if you have AMD CPU
```
pacstrap /mnt base base-devel linux linux-firmware neovim git amd-ucode
```
- if you have Intel CPU
```
pacstrap /mnt base base-devel linux linux-firmware neovim git intel-ucode
```
## (Need help?) How To Fix “invalid or corrupted package (PGP signature)” Error
```
pacman -S archlinux-keyring
```
## generate filesystem table (fstab)
```
genfstab -U /mnt >> /mnt/etc/fstab
```
## change root
```
arch-chroot /mnt
```
HERE
## setup basic stuff 
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
nvim /etc/hostname
```
- enter
```
arch
```
- open hosts
```
nvim /etc/hosts
```
- update hosts (add this at the end of the file)
```
127.0.0.1   localhost
::1         localhost
127.0.0.1   yourhostname.localdomain    yourhostname
```
- setup root password
```
passwd root
```
- open pacman config
```
nvim /etc/pacman/pacman.conf
```
- update config by uncommenting
```
Color
ParrallelDownloads = 5
```
- update config by adding under uncommented lines
```
ILoveCandy
```
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
## moment of truth
- exit installation
```
exit
```
- unmount everything
```
umount -a
```
- reboot
```
reboot
```
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
## paru setup 
```
sudo pacman -S rustup
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
sudo rm -r paru
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
