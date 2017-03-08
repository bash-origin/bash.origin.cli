
# @source https://debian-administration.org/article/317/An_introduction_to_bash_completion_part_2

_foo()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

# TODO: Log to insight channel so we can see event in fireconsole (via UDP - BO_insight log current $cur)
echo "cur: $cur"
echo "prev: $prev"

    opts="--help --verbose --version"

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}
complete -F _foo foo
