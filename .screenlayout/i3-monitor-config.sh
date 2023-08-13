config_file=""
case "$1" in
    off) config_file="base" ;;
    *) config_file="monitor" ;;
esac


ln -s -f ~/.config/i3/"$config_file" ~/.config/i3/config
i3-msg "reload"
