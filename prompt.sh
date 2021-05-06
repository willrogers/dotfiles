# Complex PS1.
# Possible additions:
# * distinguish between changed and staged files.

# \001 and \002 are better than \[ and \] when used inside a function.
# https://stackoverflow.com/a/43462720/980151
RED="\001$(tput setaf 1)\002"
YELLOW="\001$(tput setaf 3)\002"
BLUE="\001$(tput setaf 4)\002"
PALEBLUE="\001$(tput setaf 6)\002"
GREEN="\001$(tput setaf 10)\002"
PALEYELLOW="\001$(tput setaf 11)\002"
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
# Changing colour at the end changes the colour of typed text.
PS1="$GREEN\u$PALEBLUE\W$YELLOW\$(gitstatus)\$(dollar) $PALEYELLOW"

# Reset any colours after command executed.
# https://unix.stackexchange.com/questions/198723/change-color-of-input-text-not-output
trap 'echo -ne "\e[0m"' DEBUG
