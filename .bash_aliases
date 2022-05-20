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
alias ff="cd \$((find ~ -type d -print -name node_modules -prune 2>/dev/null | fzf) || echo \$PWD)"

# University aliases
alias uds="xdg-open 'https://cu.blackboard.com/webapps/blackboard/content/listContent.jsp?course_id=_35615_1&content_id=_440471_1&mode=reset'"
alias umodeling="xdg-open 'https://cu.blackboard.com/webapps/blackboard/content/listContent.jsp?course_id=_35617_1&content_id=_440475_1&mode=reset'"
alias udb="xdg-open 'https://cu.blackboard.com/webapps/blackboard/content/listContent.jsp?course_id=_35634_1&content_id=_440509_1&mode=reset'"
alias uprocess="xdg-open 'https://cu.blackboard.com/webapps/blackboard/content/listContent.jsp?course_id=_35618_1&content_id=_440477_1&mode=reset'"
alias urequirements="xdg-open 'https://cu.blackboard.com/webapps/blackboard/content/listContent.jsp?course_id=_35619_1&content_id=_440479_1&mode=reset'"
alias umarketing="xdg-open 'https://drive.google.com/drive/folders/1-v3Vnbw3JNSEdQaAffEYdUa1eZILsu7Q'"
alias uall="xdg-open 'https://cu.blackboard.com/ultra/stream'"

# functions
slink() {
    ln -s "$PWD"/$1 $2
}
