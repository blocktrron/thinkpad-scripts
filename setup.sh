#!/bin/sh

# all we need is streetcompute

echo ' *-*-*-* installing service and copy script *-*-*-*'
cp lid-suspend.sh /usr/lib/systemd/system-sleep/on-wakeup.sh
cp battery-limit.sh /usr/local/bin/battery-limit.sh
cp battery-limit.service /etc/systemd/system/
systemctl enable battery-limit.service
systemctl start battery-limit.service && echo '''

INSTALL COMPLETE
(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ (╬▔皿▔)╯ (～￣(OO)￣)ブ ╚(•⌂•)╝
(((φ(◎ロ◎;)φ))) (⓿_⓿) ლ(╹◡╹ლ) o(〃＾▽＾〃)o
(┬┬﹏┬┬) (。﹏。*) ಥ_ಥ ┗( T﹏T )┛ (T_T)
THANK U FOR SAVING THE NATURE

''' || echo 'didnt work, not my probblem'; exit 1337



