#!/usr/bin/env python

import requests
import os
import shutil
import subprocess


class color:
    purple = '\033[95m'
    cyan = '\033[96m'
    darkcyan = '\033[36m'
    blue = '\033[94m'
    green = '\033[92m'
    yellow = '\033[93m'
    red = '\033[91m'
    bold = '\033[1m'
    underline = '\033[4m'
    end = '\033[0m'


def download_curseforge(url, save_directory):
    command = ''.join(
        [f"wget -S {url}",
         " 2>&1",
         " | grep 'Location'",
         " | awk -F'/' '{print $NF}'",
         " | awk '{print $1}'",
         " | tail -n 1",
         " | tr -d '\n'",
         " | tr -d ' '"])
    result = subprocess.run(command, shell=True, capture_output=True, text=True)
    mod_name = result.stdout
    print(f"{color.green}{color.bold}{mod_name}{color.end}")
    print("\rsaved ")
    print("------------------------------------------------")
    command = f"mv download {save_directory}/{result.stdout}"
    result = subprocess.run(command, shell=True, capture_output=True, text=True)


def download(url, save_directory):
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, stream=True)
    response.raise_for_status()
    filename = os.path.basename(url)
    content_length = int(response.headers['Content-Length'])
    save_path = os.path.join(save_directory, filename)
    chunks = 0
    print(f"{color.green}{color.bold}{filename}{color.end}")
    with open(save_path, 'wb') as file:
        for chunk in response.iter_content(chunk_size=8192):
            file.write(chunk)
            chunks += 1
            if chunks % 100 == 0:
                print(f"\r{color.bold}{(int)(((chunks * 8192) / content_length) * 100)
                                       }% {color.end}| {chunks * 8192}/{content_length} bytes", end='', flush=True)
    print(f"\rsaved ", end='', flush=True)
    print(f"{chunks * 8192} bytes in total")
    print("------------------------------------------------")


def get_download_links(file_path, link_name):
    links = []
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            lines = content.split("\n")
            for line in lines:
                if link_name in line:
                    line = line.replace(link_name, "")
                    line = line.replace("[", "")
                    line = line.replace("]", "")
                    line = line.replace(" - ", "")
                    line = line.replace(" ", "")
                    if line != "":
                        links.append(line)
    except Exception as e:
        print(f"Unexpected error: {e}")
    return links


if __name__ == "__main__":
    mods_file = "mods"
    if os.path.exists(mods_file):
        shutil.rmtree(mods_file)
    os.makedirs(mods_file)
    print("================================================")
    print("Getting mods from curseforge")
    print("================================================")
    links = get_download_links("mods.org", "[curseforge_download_link]")
    for link in links:
        download_curseforge(link, mods_file)

    print("================================================")
    print("Getting mods from modrinth")
    print("================================================")
    links = get_download_links("mods.org", "[modrinth_download_link]")
    for link in links:
        download(link, mods_file)
