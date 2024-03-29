#!/usr/bin/env python

import requests
import os
import shutil

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
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.head(url, headers=headers)
    response.raise_for_status()
    redirect_url = response.headers['Location']
    redirect_url = redirect_url.split('?')[0]
    download(redirect_url, save_directory)


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
                print(f"\r{color.bold}{(int)(((chunks * 8192)/content_length)*100)}% {color.end}| {chunks * 8192}/{content_length} bytes", end='', flush=True)
    print(f"\rsaved ", end='', flush=True)
    print(f"{chunks*8192} bytes in total")
    print("------------------------------------------------")


def get_download_links(file_path, link_name):
    links = []
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            lines = content.split("\n")
            for line in lines:
                if link_name in line:
                    link_start = line.find("(") + 1
                    link_end = line.find(")")
                    download_link = line[link_start:link_end]
                    links.append(download_link)
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
    links = get_download_links("mods.md", "[download_curseforge]")
    for link in links:
        download_curseforge(link, mods_file)

    print("================================================")
    print("Getting mods from modrinth")
    print("================================================")
    links = get_download_links("mods.md", "[download_modrinth]")
    for link in links:
        download(link, mods_file)

