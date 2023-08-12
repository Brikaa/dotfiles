gaps=""
case "$1" in
    auto)
        xrandr --auto
        gaps="off"
        ;;
    *)
        xrandr --output eDP-1 --off --output HDMI-1 --primary --auto
        ;;
esac
~/.screenlayout/gaps.sh $gaps
