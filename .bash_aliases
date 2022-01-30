alias clip="xclip -sel clip"
alias cpwd="pwd | clip"
alias apv="source venv/bin/activate"
alias ape="source env/bin/activate"
alias cpv="python3 -m venv ./venv"
alias cpe="python3 -m venv ./env"
alias nvrun="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias curdate="date +'%d-%m-%y'"
alias deploy="git checkout deploy && git merge master && git push && git checkout master && clear && git branch -vv"
alias compile="g++ -Wall"
alias grep="grep --color"
alias igt="sudo intel_gpu_top"
alias systart="sudo systemctl start"
alias systop="sudo systemctl stop"
