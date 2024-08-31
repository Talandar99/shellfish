#!/bin/bash

./get_mods.py
rm -r ~/.minecraft/mods 
cp -r mods ~/.minecraft/
