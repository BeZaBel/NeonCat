#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

killall -q polybar

polybar -c $SCRIPTPATH/polybar.config single 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
