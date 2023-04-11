#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"


killall -q polybar

sleep 3 &

polybar -c $SCRIPTPATH/polybar.config single 2>&1 | tee -a /tmp/polybar.log & 

sleep 3 &
# Blank bar
polybar -c $SCRIPTPATH/polybar.config blank 2>&1 | tee -a /tmp/polybar.log &

echo "Polybar launched..." & disown

