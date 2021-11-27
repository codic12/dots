#!/bin/bash
printf '  ' 
cat /sys/class/power_supply/BAT0/capacity | tr -d '\n'
printf '%%  '
