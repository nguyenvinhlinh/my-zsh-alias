#!/bin/zsh
function get_public_ip() {
    echo $(curl -s https://api.ipify.org)
}
