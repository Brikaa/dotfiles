#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi


if [ -e /home/omar/.nix-profile/etc/profile.d/nix.sh ]; then . /home/omar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
