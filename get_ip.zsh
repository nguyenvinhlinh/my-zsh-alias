#!/bin/zsh
function wan_ip() {
    public_ip=$(curl -s https://api.ipify.org)
    wl-copy "$public_ip"
    echo "WAN IP: $public_ip"
}

function lan_ip(){
    lan_ip=$(ip -o route get to 8.8.8.8 | grep -oP 'src \K[0-9.]+')
    wl-copy "$lan_ip"
    echo "LAN IP: $lan_ip"
}
