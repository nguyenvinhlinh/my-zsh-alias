#!/bin/zsh
function wan_ip() {
    public_ip=$(curl -s https://api.ipify.org)
    wl-copy "$public_ip"
    echo "WAN IP: $public_ip"
}

function lan_ip(){
    lan_ip=$(ip -o route get to 8.8.8.8 | awk '{for(i=1;i<=NF;i++) if($i=="src") print $(i+1)}')
    wl-copy "$lan_ip"
    echo "LAN IP: $lan_ip"
}
