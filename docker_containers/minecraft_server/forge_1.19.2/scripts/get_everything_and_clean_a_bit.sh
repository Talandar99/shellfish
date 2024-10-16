#!/bin/bash

printf "\033[93m"
printf "================================================\n"
printf "~~~~~~~~~~~~~~GETTING SHADERPACKS~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/get_shaderpacks.py
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~~~GETTING DATAPACKS~~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/get_datapacks.py
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~GETTING RESOURCEPACKS~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/get_resourcepacks.py
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~~~~GETTING MODS~~~~~~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/get_mods.py

rm -rf resourcepacks datapacks download.* download shaderpacks 
