# btrfs snapper

## restoring system from liveUSB
- mount btrfs disc
```
mount /dev/sda3 /mnt
```
- search for snapshot you want to restore
```
vim /mnt/@snapshots/*/info.xml
```
- umount and remove filesystem 
```
rm -rf /mnt/@
```
- restore backup from snapshot nr 2
```
btrfs subvol snapshot /mnt/@snapshots/2/snapshots /mnt/@
```
- reboot
```
reboot
```
## making snapshot writable
- see all snapshots
```
snapper -c root list
```
- check the properties of snapshot nr 3
```
btrfs property list -ts /.snapshots/3/snapshot/
```
- change snapshot property read only to false 
```
sudo btrfs property set -ts /.snapshots/3/snapshot ro false
```

