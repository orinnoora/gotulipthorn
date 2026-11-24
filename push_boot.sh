#!/usr/bin/env bash
set -e
REPO="orinnoora/gotulipthorn"
TAG="frosty-forest-calm-harbor"
LIB="shadow-velvet.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
