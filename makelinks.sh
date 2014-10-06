#!/bin/bash
cd "$(dirname "$0")"
function link() {
    if [[ -e "$2" ]]; then
        mv "${2}" "${2}.bak"
    fi
    mkdir -p "$(dirname "$2")"
    ln -s "$(readlink -f $1)" "$2"
}

link awesome-rc.lua ~/.config/awesome/rc.lua
