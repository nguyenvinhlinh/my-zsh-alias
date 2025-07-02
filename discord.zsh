#!/bin/zsh
discord_setup() {
    DISCORD_DIRECTORY=/home/nguyenvinhlinh/Software/Discord
    echo "Create directory $DISCORD_DIRECTORY"
    mkdir -p $DISCORD_DIRECTORY;
    echo "Remove temporary files: /tmp/discord.tar.gz"
    /usr/bin/rm -rf /tmp/discord.tar.gz;
    echo "Remove temporary files: /tmp/Discord/"
    /usr/bin/rm -rf /tmp/Discord/;
    echo "Remove old discord files: $DISCORD_DIRECTORY/*"
    /usr/bin/rm -rf /home/nguyenvinhlinh/Software/Discord/*;
    echo "Download discord and save to /tmp/discord.tar.gz";
    wget -O /tmp/discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"
    echo "Extract discord.tar.gz to /tmp/Discord"
    tar -xf /tmp/discord.tar.gz --directory /tmp/;
    echo "Copy new Discord files to $DISCORD_DIRECTORY/"
    cp -r /tmp/Discord/* /home/nguyenvinhlinh/Software/Discord/;
}
