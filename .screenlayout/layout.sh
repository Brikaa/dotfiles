i3_monitor_config=""
case "$1" in
    presentation)
        xrandr --auto
        xrandr --output HDMI-1 --same-as eDP-1 --mode 1920x1080 --auto
        i3_monitor_config="off"
        ;;
    auto)
        xrandr --auto
        i3_monitor_config="off"
        ;;
    *)
        xrandr --output eDP-1 --off --output HDMI-1 --primary --auto
        ;;
esac
~/.screenlayout/i3-monitor-config.sh $i3_monitor_config || exit 1
~/.config/i3/background.sh
