# All in one update and upgrade, since I always forget some of the extras
sudo apt-get update && \
    sudo apt-get upgrade --with-new-pkgs && \
    sudo apt-get autoclean && \
    sudo apt-get autoremove