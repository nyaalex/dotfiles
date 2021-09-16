export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

file=hour$(date +"%H").png
dir=$(dirname "$0")

basedir=$dir/main

if [[ -a $basedir/$file ]]; then
		wal -si $basedir/$file
else
		wal -si $dir/default.jpg
fi

. $HOME/.cache/wal/colors.sh
cat >$HOME/.config/alacritty/colors.yml <<EOF
colors:
  primary:
    background: '$color0'
    foreground: '$color7'
  cursor:
    text:       '$color0'
    cursor:     '$color7'
  normal:
    black:      '$color0'
    red:        '$color1'
    green:      '$color2'
    yellow:     '$color3'
    blue:       '$color4'
    magenta:    '$color5'
    cyan:       '$color6'
    white:      '$color7'
  bright:
    black:      '$color8'
    red:        '$color9'
    green:      '$color10'
    yellow:     '$color11'
    blue:       '$color12'
    magenta:    '$color13'
    cyan:       '$color14'
    white:      '$color15'
EOF
