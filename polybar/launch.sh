#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

killall -q polybar

# polybar -c $SCRIPTPATH/polybar.config onebar 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c $SCRIPTPATH/polybar.config windownames 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c $SCRIPTPATH/polybar.config workspaces 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c $SCRIPTPATH/polybar.config volume 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c $SCRIPTPATH/polybar.config cpu 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c $SCRIPTPATH/polybar.config trayonly 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
