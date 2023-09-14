#!/usr/bin/env python

import requests
import os


def download_file(url, save_directory):
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.head(url, headers=headers)
    response.raise_for_status()
    redirect_url = response.headers['Location']
    redirect_url = redirect_url.split('?')[0]
    if not redirect_url:
        print("error no link.")
        return
    response = requests.get(redirect_url, headers=headers, stream=True)
    response.raise_for_status()
    filename = os.path.basename(redirect_url)
    save_path = os.path.join(save_directory, filename)
    chunks = 0
    with open(save_path, 'wb') as file:
        for chunk in response.iter_content(chunk_size=8192):
            file.write(chunk)
            chunks = chunks + 1
            if chunks % 10 == 0:
                print(f"downloaded {chunks*8192} bytes")
    print("------------------------------------------------")
    print(f"file saved as {filename}")
    print(f"{chunks*8192} bytes in total")
    print("------------------------------------------------")


def display_download_links(file_path):
    links = []
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            lines = content.split("\n")
            start_index = -1
            for i, line in enumerate(lines):
                if "# Mods" in line:
                    start_index = i
                    break
            if start_index != -1:
                lines = lines[start_index + 1:]
            for line in lines:
                if "[download]" in line:
                    link_start = line.find("(") + 1
                    link_end = line.find(")")
                    download_link = line[link_start:link_end]
                    links.append(download_link)
    except Exception as e:
        print(f"Unexpected error: {e}")
    return links


if __name__ == "__main__":
    mods_file = "mods"
    if not os.path.exists(mods_file):
        os.makedirs(mods_file)

    links = display_download_links("mods.md")
    for link in links:
        download_file(link, mods_file)
