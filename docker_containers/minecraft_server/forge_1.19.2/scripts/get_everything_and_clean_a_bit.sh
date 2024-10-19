#!/bin/bash

printf "\033[93m"
printf "================================================\n"
printf "~~~~~~~~~~~~~~GETTING SHADERPACKS~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/modrinth_curseforge_downloader.py shaderpacks
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~~~GETTING DATAPACKS~~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/modrinth_curseforge_downloader.py datapacks
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~GETTING RESOURCEPACKS~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/modrinth_curseforge_downloader.py resourcepacks
printf "\033[93m"
printf "\n================================================\n"
printf "~~~~~~~~~~~~~~~~GETTING MODS~~~~~~~~~~~~~~~~~~~~\n"
printf "================================================\n"
printf "\033[0m"
./scripts/modrinth_curseforge_downloader.py mods 

rm -rf resourcepacks datapacks download.* download shaderpacks 
