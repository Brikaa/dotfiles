notify_failure() {
    notify-send "Script Error" "An error occurred while locking."
}

trap 'notify_failure; exit 1' ERR

i3lock -k -c 000000 --nofork &
if [ -f ~/.work-clock ]; then
    watson stop
fi

wait %1

if [ -f ~/.work-clock ]; then
    project_name=$(cat ~/.work-clock)
    watson start $project_name
fi
