#!/bin/bash

CURRLAY=$(setxkbmap -query | grep layout)

case $CURRLAY in
	"layout:     latam,gr" )
	setxkbmap gr ;;
	"layout:     latam" )
	setxkbmap gr ;;
 	"layout:     gr" )
	setxkbmap latam ;;
esac
