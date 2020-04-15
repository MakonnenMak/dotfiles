environs=`pidof dbus-daemon | tr ' ' '\n' | awk '{printf "/proc/%s/environ ", $1}'`
export DBUS_SESSION_BUS_ADDRESS=`cat $environs 2>/dev/null | tr '\0' '\n' | grep DBUS_SESSION_BUS_ADDRESS | cut -d '=' -f2-`
export DISPLAY=:0

notify-send "Please go to bed..." -u critical
