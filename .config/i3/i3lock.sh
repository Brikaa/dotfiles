i3lock -k -c 000000 --nofork &
if [ -f ~/.work-clock ]; then
    watson stop
fi

wait %1

if [ -f ~/.work-clock ]; then
    watson start work
fi
