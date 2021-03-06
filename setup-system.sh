#!/bin/bash

# get root
echo "Input password to get root permission."
sudo ls

#
# Installation
#

# 1. MUST INSTALL tools and base system.

# CLI software
sudo apt-get install -y zsh # z shell
sudo apt-get install -y vim vim-gtk # editor
sudo apt-get install -y git subversion # version control
sudo apt-get install -y curl # network tool
sudo apt-get install -y ack-grep # search tool
sudo apt-get install -y trash-cli # trash file in command line, replace rm
sudo apt-get install -y openssh-server sshfs # ssh related tools
sudo apt-get install -y inotify-tools # io tools
sudo apt-get install -y htop # system monitor
sudo apt install -y socat # proxy
sudo apt install -y ffmpeg
# GUI software
sudo apt install terminator
sudo apt-get install -y nautilus-open-terminal
sudo apt-get install -y filezilla gimp meld
sudo apt-get install -y gparted # disk tools
# 辅助~/bin中的脚本，比如yy-servers.sh，生成GUI菜单
sudo apt-get install -y dialog

# hudson slave needs java runtime env
# apache sling need java runtime env (java7 may not work)
# apache sling deploy need maven2
#sudo apt-get install -y openjdk-6-jdk maven2
# TODO install Oracle JDK

# 2. Recommanded tools and base system.

# other base system.
sudo apt-get install -y x11vnc
# other common tools
sudo apt-get install -y multitail p7zip davfs2 gnuplot unrar
# other common software
sudo apt-get install -y xzoom xclip
sudo apt-get install -y shutter virtualbox
# render/image
sudo apt-get install -y luminance-hdr imagemagick
# offline doc viewer
# https://zealdocs.org/download.html#linux-ubuntu

# nodejs
# a better way to install nodejs - http://xxd3vin.github.io/nodejs
#sudo apt-get install -y nodejs npm
#sudo ln -s /usr/bin/nodejs /usr/bin/node

# nodejs weinre
sudo npm -g install weinre

#
# Config
#

# Import crontab
crontab /home/chenyang/env/crontab

# hosts
sudo chown chenyang.chenyang /etc/hosts
cat /home/chenyang/env/hosts >> /etc/hosts

# mount point
sudo chown chenyang.chenyang /etc/fstab
cat /home/chenyang/env/fstab  >> /etc/fstab

# Only swap when absolutely necessary
sudo chown chenyang.chenyang /etc/sysctl.conf
echo "vm.swappiness=1" >> /etc/sysctl.conf
