# GIT
alias gitgraph="git log --all --oneline --graph"
alias gitroot="git rev-parse --show-toplevel"
alias gitclean="gitroot | xargs git clean -fd && gitroot | xargs git checkout"
alias githere="git rev-parse --abbrev-ref HEAD | xargs git push origin"

# CLI
my_cli_help() {
    echo "
        This is help for Aleksa's CLI aliases:

        cws - Find files with whitespaces. Takes find path as argument.
        grep* - Grep recursive only files with * extension (lua, c, h are supported).
        no_/rocketman - Disable/Enable vim mode in terminal.
    "
}

cws() {
    find $1 -type f -exec egrep -l " +$" {} \;
}

alias greplua="grep -rn --include=*.lua"
alias grepc="grep -rn --include=*.c*"
alias greph="grep -rn --include=*.h*"
alias rocketman="set -o vi"
alias no_rocketman="set -o emacs"
