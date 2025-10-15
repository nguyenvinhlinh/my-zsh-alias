#!/bin/zsh
function get_public_ip() {
    public_ip=$(curl -s https://api.ipify.org)
    echo "IP: $public_ip (copied to clipboard)"
    wl-copy "$public_ip"
}
