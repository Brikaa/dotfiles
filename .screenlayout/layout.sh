i3_monitor_config=""
case "$1" in
    auto)
        xrandr --auto
        i3_monitor_config="off"
        ;;
    *)
        xrandr --output eDP-1 --off --output HDMI-1 --primary --auto
        ;;
esac
~/.screenlayout/i3-monitor-config.sh $i3_monitor_config
nitrogen --restore
