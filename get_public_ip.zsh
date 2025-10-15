#!/bin/zsh
function get_public_ip() {
    public_ip=$(curl -s https://api.ipify.org)
    wl-copy "$public_ip"
    echo "IP: $public_ip"
}
