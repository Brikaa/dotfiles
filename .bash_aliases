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
alias night="redshift -O 4500k -P"

# University aliases
alias uall="firefox --new-window 'https://cu.blackboard.com/ultra/stream'"

# functions
slink() {
    ln -s "$PWD"/$1 $2
}
