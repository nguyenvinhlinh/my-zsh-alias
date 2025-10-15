#!/bin/zsh
#set -x # Dev only

function test_https_ip() {
    domain_name="$1"
    ip_list_parsing=$(nslookup $domain_name | awk '/^Address: / {print $2}')
    ip_list=(${(f)ip_list_parsing})

    echo "Found IP: $ip_list"
    for ip in $ip_list; do
        curl -H "Host: $domain_name" --resolve $domain_name:443:$ip https://$domain_name  --head --max-time 3 &> /dev/null
        if [ $? -eq 0 ]; then
            echo "Status IP: $ip (OK)"
        else
            echo "Status IP: $ip (ERROR)"
        fi
    done
}
