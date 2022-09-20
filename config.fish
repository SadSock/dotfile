#g some more ls aliases
alias  ls="exa"
alias  ll="exa -lF"
alias  la="exa -la"
alias  e="emacsclient -nw -c"
alias  magit="emacsclient -t -c -e \"(progn (magit-status) (delete-other-windows))\""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --universal tide_character_icon '~>'
# set --universal tide_character_icon '🐟'
