# It can help to know when these files are sourced.
echo "Sourcing config.fish ..." >&2

set DEFAULT_USER rogersw

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    set last_status $status
    if not test $USER = "$DEFAULT_USER"
        set_color red
        echo -n $USER
    end
    set_color blue
    echo -n (basename (pwd))
    set branch (git branch --show-current 2> /dev/null || echo -n "")
    set_color cyan
    echo -n $branch
    set gitstatus (git status 2> /dev/null)
    if string match -q "*Changes not staged*" "$gitstatus"
        set_color brgreen
        echo -n "*"
    end
    if string match -q "*Changes to be committed*" "$gitstatus"
        set_color brgreen
        echo -n "+"
    end
    if not test $last_status = 0
        set_color red
        echo -n "[$last_status]"
    end
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
