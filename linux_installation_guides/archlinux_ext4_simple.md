# Arch Linux EFI EXT4 Installation + Desktop 

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

## (Need help?) How To delete exisisting partion 
- you can remove existiong partion by using `gdisk`
```
gdisk /dev/sda
```
- d for delete
```
d
```
- then enter partion number
```
x
```
- write
```
w
```
- quit
```
q
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
- format filesystem (ext4)
```
mkfs.ext4 /dev/sda3
```
- make swap (swap)
```
mkswap /dev/sda2
```
- activate swap
```
swapon /dev/sda2
```
## mount everything in place
- mount root subvolume
```
mount /dev/sda3 /mnt
```
- create boot dir
```
mkdir /mnt/boot
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
pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector bluez bluez-utils xdg-utils xdg-user-dirs alsa-utils pulseaudio pulseaudio-bluetooth inetutils linux-headers bash-completion
```
- get rest of alsa drivers
```
sudo pacman -S pipewire-alsa pipewire-pulse
```
- install grub 
```
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB --removable
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
## set clock synchronize
```
timedatectl set-ntp true
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
### [optional] adding keymap in X11 config (pl in my case)
adding keymapping into vconsole may not always work. If that's the case try to add it in different location
- open keyboard.conf
```bash
sudo nvim /etc/X11/xorg.conf.d/00-keyboard.conf
```
- paste this
```bash
Section "InputClass"
    Identifier "system-keyboard"
    MatchIsKeyboard "on"
    Option "XkbLayout" "pl"
EndSection
```
- save
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
## (optional) ssh server configuration
- you may want to connect to your machine using ssh
```
sudo pacman -S openssh
sudo systemctl enable sshd
sudo systemctl start sshd 
```
- check if it works
```
sudo systemctl status sshd
```

## (optional) install i3 wm
- get packages
```
sudo pacman -S xorg-server xorg-apps xorg-xinit i3-wm i3blocks dunst flameshot playerctl rofi pamixer feh xclip xcompmgr alacritty firefox ttf-font-awesome ttf-firacode-nerd ttf-dejavu ttf-joypixels
paru -S betterlockscreen 
```
- install drivers (list and select appropriate)
```
pacman -Ss xf86-video
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
exec dbus-launch i3
```
- launch i3 and have fun
```
startx
```

## (optional) bluetooth
- install blueberry
```
sudo pacman -S blueberry
```
- allow yourself to use input
```
sudo usermod -G yourusername
```

## (optional) thunar
```
sudo pacman -S thunar thunar-volman gvfs tumbler polkit-gnome

```
