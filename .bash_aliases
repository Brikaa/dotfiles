UNIVERSITY_FOLDER="/home/omar/p/third-year-first-semester"

open_file_with_extension() {
    case "$1" in
        *.png | *.pdf) brave "$1" && cd $(dirname "$1") ;;
        *.pptx | *.ppt | *.doc | *.docx) libreoffice "$1" && cd $(dirname "$1") ;;
        *.mp3 | *.wav | *.mp4 | *.mkv) mpv "$1" && cd $(dirname "$1") ;;
    esac
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
alias ff="cd \$((find ~ -type d -print \\( -name node_modules -o -name \".npm\" \
    -o -name \".git\" -o -name \".cache\" -o -name \".mozilla\" -o -name \"venv\" -o -name \"env\" \\) \
	-prune 2>/dev/null | fzf) || echo \$PWD)"
alias nethogs="sudo nethogs"
alias iotop="sudo iotop"
alias night="redshift -O 4500k -P"
alias pdf="brave"
alias fpdf="open_file_with_extension \$((find $UNIVERSITY_FOLDER \
    \\( -name \"*.pdf\" -o -name \"*.pptx\" -o -name \"*.png\" -o -name \"*.mp3\" \\)\
	-print \\( -name node_modules -o -name \".npm\" \
    -o -name \".git\" -o -name \".cache\" -o -name \".mozilla\" -o -name \"venv\" -o -name \"env\" \\) \
	-prune 2>/dev/null | fzf) || echo \"--version\")"
