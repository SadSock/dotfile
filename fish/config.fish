#g some more ls aliases

# source (/home/xwu/.nix-profile/bin/starship init fish --print-full-init | psub)
fzf_configure_bindings

alias ll='eza -lahF --icons --color-scale --group-directories-first'
alias la='eza -a --icons --color-scale --group-directories-first'
alias ls='eza --icons --color-scale --group-directories-first'
alias  e="emacsclient -nw -c"
alias  magit="emacsclient -t -c -e \"(progn (magit-status) (delete-other-windows))\""

if status is-interactive
    # Commands to run in interactive sessions can go here
end
