# krusader_setup_on_archlinux
### install packages
```bash
sudo pacman -S krusader breeze-icon qt4ct kio-extras kio5-extras
```
### add this to bashrc
```bash
export QT_QPA_PLATFORMTHEME="qt4ct"
export QT_PLUGIN_PATH=$HOME/.kde3/lib/kde4/plugins/:/usr/lib/kde4/plugins/
```
### setup theme and font using qt4ct
### toggle the "Show Previews" option from View menu. 
