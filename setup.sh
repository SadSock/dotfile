export TERM=xterm-256color
export PATH=/home/xwu/.local/bin:$PATH

source ~/.local/share/blesh/ble.sh
#source /home/xwu/.config/broot/launcher/bash/br


 __main() {
     local major="${BASH_VERSINFO[0]}"
     local minor="${BASH_VERSINFO[1]}"

     if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
         source <(/home/xwu/gentoo/usr/bin/starship init bash --print-full-init)
     else
         source /dev/stdin <<<"$(/home/xwu/gentoo/usr/bin/starship init bash --print-full-init)"
     fi
 }
 __main
 unset -f __main

