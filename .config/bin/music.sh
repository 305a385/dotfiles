#!/bin/sh

mpc update -q
mpc repeat on

music=$(mpc listall | wofi --dmenu) # put to variable so current music wont stop
mpc 'clear' # removes current queue
mpc add $music

mpc play
