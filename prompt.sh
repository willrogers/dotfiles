# Complex PS1
# \001 and \002 are better than \[ and \] when used inside a function.
RED="\001$(tput setaf 1)\002"
YELLOW="\001$(tput setaf 3)\002"
BLUE="\001$(tput setaf 4)\002"
GREEN="\001$(tput setaf 10)\002"
BOLD="\001$(tput bold)\002"
RESET="\001$(tput sgr0)\002"

# Print branch name and * if there are any changes.
function gitstatus() {
    output=$(git branch --show-current 2>/dev/null | tr -d '\n')
    status=$(git status --short --untracked-files=no 2> /dev/null)
    if [[ -n $status ]]; then
        output="${output}*"
    fi
    echo -n -e $output
}

# Yellow if command succeeded, red if not.
function dollar() {
    # PIPESTATUS can be used even if other commands are run in the prompt.
    if [[ ${PIPESTATUS[-1]} -ne 0 ]]; then
        echo -n -e "$BOLD$RED\$$RESET"
    else
        echo -n -e "$BOLD$YELLOW\$$RESET"
    fi
}
# Using PROMPT_COMMAND prevents other tools such as virtualenv from modifying
# the prompt. So use PS1 directly.
PS1="$GREEN\u$BLUE\W$YELLOW\$(gitstatus)$RESET\$(dollar) "
