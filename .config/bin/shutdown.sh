#!/bin/sh

choice=`printf 'cancel\nshutdown' | wofi -dk /dev/null`

case $choice in
	'cancel')
		exit
		;;
	'shutdown')
		shutdown now
		;;
esac
