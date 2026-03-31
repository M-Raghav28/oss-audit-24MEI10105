#!/bin/bash

PKG="git"

echo "Checking package: $PKG"
echo "--------------------------------"

echo "Status: INSTALLED (simulated environment)"

echo "--------------------------------"

case $PKG in
    git) echo "Git: Distributed version control system" ;;
    apache2) echo "Apache: Web server software" ;;
    mysql) echo "MySQL: Database management system" ;;
    vlc) echo "VLC: Multimedia player" ;;
    *) echo "Unknown package" ;;
esac

echo "Executed in online environment"
