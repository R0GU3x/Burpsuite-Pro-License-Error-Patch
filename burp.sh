#!/bin/bash

RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${YELLOW}

────▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀█─█
▀▀▀▀▄─█─█─█─█─█─█──█▀█    [${RED}@R0GU3x${YELLOW} and ${RED}@vrscika31${YELLOW}] FIND US ON GITHUB
─────▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀─▀
    
${NC}"

[ "$EUID" -ne 0 ] && { echo "[-] Run this script with sudo/root"; exit 1; }

version=$(java -version 2>&1 | awk -F '[ ."]+' '/openjdk/ {print $3; exit}')

if [ "$version" = "25" ]; then
	update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java
	echo -e "${GREEN}[rogue says] all patches done. you are good to go mahn${NC}";
elif [ "$version" = "21" ]; then
	echo -e "${CYAN}[rogue says] already patched baby${NC}";
fi
