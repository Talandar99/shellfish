#!/bin/bash

# type this
sudo groupadd android-sdk
sudo gpasswd -a $USER android-sdk
sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk
#ad symblink ln -s jbr jre
#
# add this to bashrc
export ANDROID_SDK_ROOT='/opt/android-sdk'
export JAVA_HOME=/opt/android-studio/jbr
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

sudo chown -R $(whoami) $ANDROID_SDK_ROOT
