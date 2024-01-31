# krusader_setup_on_archlinux
### install packages
```bash
sudo pacman -S krusader breeze-icon qt5ct kio-extras
```
### add this to bashrc
```bash
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_PLUGIN_PATH=$HOME/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/
```
### setup theme and font using qt5ct
### toggle the "Show Previews" option from View menu. 

