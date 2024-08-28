#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin

# SRC: https://old.reddit.com/r/openSUSE/comments/17j0o8a/thinkpad_wakes_up_from_sleep_as_soon_as_i_close/kqx25uz/
# Put in /usr/lib/systemd/system-sleep/on-wakeup.sh

# If waking from sleep...
if [[ "${1}" == "post" ]]; then
    # AFTER RESUME
    echo "$(date) Have resumed..." >> /tmp/wake.log
    grep -q closed /proc/acpi/button/lid/LID/state
    if [ $? = 0 ]
    then
        echo "$(date) Have resumed and lid is closed, attempting to suspend..." >> /tmp/wake.log
        echo freeze > /sys/power/state
    fi
fi
