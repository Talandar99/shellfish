#!/usr/bin/env python

import requests
import os


def get_redirect_url(url):
    try:
        headers = {'User-Agent': 'Mozilla/5.0'}
        response = requests.head(url, headers=headers)
        response.raise_for_status()
        redirect_url = response.headers['Location']
        redirect_url = redirect_url.split('?')[0]
        return redirect_url
    except requests.exceptions.RequestException as e:
        print(f"error: {e}")
        return None


def download_file(url, save_directory):
    try:
        redirect_url = get_redirect_url(url)
        if not redirect_url:
            print("error no link.")
            return
        headers = {'User-Agent': 'Mozilla/5.0'}
        response = requests.get(redirect_url, headers=headers, stream=True)
        response.raise_for_status()
        filename = os.path.basename(redirect_url)
        save_path = os.path.join(save_directory, filename)
        with open(save_path, 'wb') as file:
            for chunk in response.iter_content(chunk_size=8192):
                file.write(chunk)
        print(f"file saved as {filename}")

    except requests.exceptions.RequestException as e:
        print(f"error: {e}")


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
    except FileNotFoundError:
        print("File not found.")
    except IOError:
        print("IOError can't read file")
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
