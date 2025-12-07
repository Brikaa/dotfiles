open_file_with_extension() {
    case "$1" in
        *.png | *.pdf) brave "$1" ;;
        *.pptx | *.ppt | *.doc | *.docx) libreoffice "$1"  ;;
        *.mp3 | *.wav | *.mp4 | *.mkv) mpv "$1"  ;;
        *) echo "Unsupported file extension" >&2 && return 1 ;;
    esac
    cd "$(dirname "$1")"
}

# custom_find(src, options)
custom_find() {
    find "$@" -print \( $(eval echo $(cat ~/.findignore)) \) -prune 2>/dev/null
}

alias claer="clear"
alias clip="xclip -sel clip"
alias cpwd="pwd | clip"
alias apv="source venv/bin/activate"
alias ape="source env/bin/activate"
alias cpv="python3 -m venv ./venv"
alias cpe="python3 -m venv ./env"
alias grep="grep --color"
alias igt="sudo intel_gpu_top"
alias systart="sudo systemctl start"
alias systop="sudo systemctl stop"
alias gxx="g++ -Wall"
alias nvrun="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias ff='cd "$((custom_find ~ -type d | fzf) || echo $PWD)"'
alias nethogs="sudo nethogs"
alias todo="$EDITOR ~/TODO.txt"
alias iotop="sudo iotop"
alias night="redshift -O 4500k -P"
alias pdf="brave"
alias fpdf='open_file_with_extension $((custom_find $UNIVERSITY_FOLDER \
    \( -name "*.pdf" -o -name "*.pptx" -o -name "*.png" -o -name "*.mp3" \) | fzf) || echo "--version") 2>/dev/null'
alias wstart='read -p "Enter project name: " project_name && watson start $project_name && echo $project_name > ~/.work-clock'
alias wstop='rm ~/.work-clock && watson stop'
alias wlog='watson log'
alias wstatus='watson status'
alias woff='wstop; cd ~/.config/watson && git add -A && git commit -m "Feat" && git push; echo "Shutting down in 10 seconds..." && sleep 10 && shutdown now'
alias ll='ls -lavtr --ignore=..'
alias invm="source /usr/share/nvm/init-nvm.sh"
alias layout="~/.screenlayout/layout.sh"
alias tt='alacritty --working-directory=$(pwd) & disown'
