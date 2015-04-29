#!/bin/bash

function noty()
{
  export DISPLAY=:0.0 && export XAUTHORITY=/home/chenyang/.Xauthority && /usr/bin/notify-send "$1" "$2" -i ~/Downloads/swiper-autoplay.png
}

function check()
{
  files="`git ls-files --other --directory --exclude-standard`"
  git ls-files --other --directory --exclude-standard | sed q1 || noty "Uncommit changes in Git" "Dir:\n`pwd`\n \nFile list:\n$files\n"
}

function check1()
{
  cd "$1" && check && cd -
}
function check2()
{
  cd "/home/chenyang/source/$1" && check && cd -
}

# check not commit

check1 "/home/chenyang/env"
check1 "/home/chenyang/workspace"
check2 "performance"
check2 "xxd3vin.github.io"

# @TODO check not up2date