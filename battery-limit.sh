#!/bin/sh

# ihr tut damit nicht nur euch was gutes, sondern auch der umwelt
echo 75 | tee /sys/class/power_supply/BAT0/charge_start_threshold >/dev/null
echo 80 | tee /sys/class/power_supply/BAT0/charge_stop_threshold >/dev/null 
