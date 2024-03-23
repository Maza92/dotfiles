#!/usr/bin/env bash

killall -q polybar
	
polybar -q HDMI -c ~/.config/polybar/config.ini &
polybar -q eDP -c ~/.config/polybar/config.ini &
