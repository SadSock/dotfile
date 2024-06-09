# common

export TERM=xterm-256color
export PATH=/home/xwu/.local/bin:$PATH
export XDG_CONFIG_HOME=/home/xwu/.config
export XDG_DATA_HOME=/home/xwu/.local/share
export XDG_STATE_HOME=/home/xwu/.local/state
export COLORTERM=truecolor

#source ~/.local/share/blesh/ble.sh
#source /home/xwu/.config/broot/launcher/bash/br

# alias icd='cd '

icd(){
dir=$(fd --type d / -a --full-path | fzf)

if [ -n $dir ]; then
  cd $dir
fi
}

# starship
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
