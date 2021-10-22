# It can help to know when these files are sourced.
echo "sourcing config.fish" >&2

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    set_color green
    echo -n $USER
    set_color blue
    echo -n (basename (pwd))
    set branch (git branch --show-current 2> /dev/null || echo -n "")
    set_color cyan
    echo -n $branch
    set_color yellow
    echo -n "\$ "
    set_color normal
end

# Some aliases
alias gittree "git log --graph --oneline"
alias gf "git fetch --all --prune"
alias gp "git pull --ff-only"
alias gdiff "git diff --no-index"
alias gs "git status"
