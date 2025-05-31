#!/usr/bin/env python

import tomllib
import requests
import os
import shutil
import subprocess
import sys


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


def _download_curseforge(url, save_directory):
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


def _download(url, save_directory):
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, stream=True)
    response.raise_for_status()
    filename = os.path.basename(url)
    content_length = int(response.headers['Content-Length'])
    save_path = os.path.join(save_directory, filename)
    chunks = 0
    print(f"{color.green}{color.bold}{filename}{color.end}")
    print(save_path)
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


def _get_download_links(file_path, link_name):
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


def main():
    download_list_filename = sys.argv[1]

    with open("download_configuration/configuration.toml", "rb") as f:
        data = tomllib.load(f)

    toml = data[download_list_filename]
    final_location = toml['final_location']
    additional_custom_files = toml['additional_custom_files']
    cleanup_temp_file_after_downloading = toml['cleanup_temp_file_after_downloading']

    if os.path.exists(download_list_filename):
        shutil.rmtree(download_list_filename)
    os.makedirs(download_list_filename)
    command = f"cp -r {additional_custom_files} ."
    subprocess.run(command, shell=True, capture_output=True, text=True)

    print("================================================")
    print(f"Getting {download_list_filename} from curseforge")
    print("================================================")
    links = _get_download_links(f"download_configuration/{download_list_filename}.org", "[curseforge_download_link]")
    for link in links:
        _download_curseforge(link, download_list_filename)

    print("================================================")
    print(f"Getting {download_list_filename} from modrinth")
    print("================================================")
    links = _get_download_links(f"download_configuration/{download_list_filename}.org", "[modrinth_download_link]")
    for link in links:
        _download(link, download_list_filename)
    if download_list_filename != final_location:
        command = f"cp -r {download_list_filename} {final_location}"
        subprocess.run(command, shell=True, capture_output=True, text=True)

    if cleanup_temp_file_after_downloading:
        print("================================================")
        print("Cleaning up")
        print("================================================")
        command = f"rm -r {download_list_filename}"
        subprocess.run(command, shell=True, capture_output=True, text=True)


main()
