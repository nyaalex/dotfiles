export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

file=hour$(date +"%H").png
wpg -s $file
