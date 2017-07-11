alias fcp "source ~/code/misc/changeports.fish"
alias vi "vim"
alias gittree="git log --graph --oneline"
bind \ce accept-autosuggestion

# some shenanigans to turn off bracketed paste mode after each
# run of vim
set v (which vim)
function unbracketed_vim
  eval $v $argv
  # turn off bracketed paste mode
  printf "\e[?2004l"
end
alias vim "unbracketed_vim"
