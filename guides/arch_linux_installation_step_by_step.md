# arch instalation step by step

##### test connection
```
ping arch.org
```

##### set timedate ntp
```
timedatectl set-ntp true
```

##### check drives
```
lsblk
```

##### setup partitions
```
cfdisk /dev/sda
```
- if you have less than 2TB of memmory pick dos 
- boot need at least 128M
- create at least 2 partitions. Main and boot 

##### format partitons as ext4
```
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
```

##### mount drives
```
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
lsblk
```

##### pacstrap 
```
pacstrap /mnt base base-devel linux linux-firmware neovim 
```
##### How To Fix “invalid or corrupted package (PGP signature)” Error
```
pacman-key --populate archlinux
pacman-key --refresh-keys
pacman -S archlinux-keyring
```

##### drives (fstab)
```
genfstab -U /mnt >> /mnt/etc/fstab
```
##### change root
```
arch-chroot /mnt /bin/bash
```
##### setup grub and networkmanager
```
pacman -S networkmanager grub
systemctl enable NetworkManager
```
##### if you use efi add
```
pacman -S efibootmgr
```
```
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```
##### root password
```
passwd
```
##### reboot
```
unmount -R /mnt
reboot
```

##### final configuration
```
nvim etc/locale.gen 
```
uncomment:
- en_US.UTF
- en_US ISO
and save 
```
locale-gen
nvim etc/locale.conf
nvim etc/hostname
```
```
nvim etc/locale.conf
```
LANG=en_US.UTF-8
```
ln -sf /usr/share/zoneinfo/* /etc/localtime
```

```
nvim etc/hostname
```
yourhostname
```
useradd -m -g wheel user
passwd user
nvim /etc/sudoers
```
around line 70

#### xorg
```
sudo pacman -S xorg-server xorg-apps xorg-xinit xterm
```
#### i3
create file .xinitrc in home dir
Add line:
```
exec i3
```
#### paru 
```
sudo pacman -S rustup
rustup default stable
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
