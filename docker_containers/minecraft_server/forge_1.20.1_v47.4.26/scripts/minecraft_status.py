#!/usr/bin/env python3

from datetime import datetime
import json
import socket
import struct
import time


HOST = "minecraft.talandar.dev"
PORT = 25565
INTERVAL_SECONDS = 10
PROTOCOL_VERSION = 763
TIMEOUT_SECONDS = 5
RESET = "\033[0m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
BOLD = "\033[1m"


def encode_varint(value: int) -> bytes:
    result = bytearray()
    while True:
        byte = value & 0x7F
        value >>= 7
        result.append(byte | (0x80 if value else 0))
        if not value:
            return bytes(result)


def read_varint(stream) -> int:
    value = 0
    shift = 0
    for _ in range(5):
        byte = stream.read(1)[0]
        value |= (byte & 0x7F) << shift
        if byte < 0x80:
            return value
        shift += 7
    return value


def component_text(component: object) -> str:
    if isinstance(component, str):
        return component
    if isinstance(component, list):
        return "".join(component_text(part) for part in component)
    if isinstance(component, dict):
        text = str(component.get("text", ""))
        return text + component_text(component.get("extra", []))
    return ""


def color(text: str, code: str) -> str:
    return f"{code}{text}{RESET}"


def bold(text: str) -> str:
    return f"{BOLD}{text}{RESET}"


def get_status() -> dict:
    host_bytes = HOST.encode("utf-8")
    handshake = (
        encode_varint(0)
        + encode_varint(PROTOCOL_VERSION)
        + encode_varint(len(host_bytes))
        + host_bytes
        + struct.pack(">H", PORT)
        + encode_varint(1)
    )

    with socket.create_connection((HOST, PORT), timeout=TIMEOUT_SECONDS) as connection:
        stream = connection.makefile("rb")
        connection.sendall(encode_varint(len(handshake)) + handshake)
        connection.sendall(b"\x01\x00")
        read_varint(stream)
        read_varint(stream)
        return json.loads(stream.read(read_varint(stream)))


def main() -> None:
    print(f"Checking {HOST}:{PORT} every {
          INTERVAL_SECONDS}s. Stop with Ctrl+C.", flush=True)
    while True:
        timestamp = datetime.now().astimezone().strftime("%H:%M:%S %Z")
        status = get_status()
        players = status.get("players", {})
        version = status.get("version", {}).get("name", "unknown")
        motd = component_text(status.get("description", "")).replace("\n", " ")
        online = players.get("online", 0)
        maximum = players.get("max", 0)
        sample = players.get("sample")
        if sample is None:
            player_list = "not provided by server"
        else:
            player_list = ", ".join(
                color(player.get("name", "?"), YELLOW) for player in sample
            ) or "none"
            if len(sample) < online:
                player_list += " (partial list)"
        print(
            f"-----------------------------------------------------------------\n"
            f"{bold('Time')}: {timestamp} | "
            f"{bold('Status')}: {color('ONLINE', GREEN)} | "
            f"{bold('Version')}: {version}\n"
            f"{bold('Description')}: {motd}\n"
            f"{bold('Players')}: {online}/{maximum} | "
            f"{bold('Player list')}: {player_list}",
            flush=True,
        )
        time.sleep(INTERVAL_SECONDS)


if __name__ == "__main__":
    main()
