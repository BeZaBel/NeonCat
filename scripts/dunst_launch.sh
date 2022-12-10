#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

dunst -conf $SCRIPTPATH/dunstrc

`dunstify -u low "Hello!"`
