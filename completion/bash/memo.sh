#!/bin/bash

_memo(){
    local cur opt prev

    MEMO_FOLDER="${MEMO_DIR:-$HOME/memo}"
    opts="add rm copy search show list"

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    case ${COMP_CWORD} in
        1)
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}" ) )
            return 0
            ;;
        2)
            prev="${COMP_WORDS[COMP_CWORD-1]}"
            case ${prev} in
                search)
                    return 1
                    ;;
                *)
                    entries=$( ls ${MEMO_FOLDER} )
                    COMPREPLY=( $(compgen -W "${entries}" -- "${cur}" ) )
                    return 0
                    ;;
            esac
            ;;
        3)
            operatior="${COMP_WORDS[COMP_CWORD-2]}"
            case ${operatior} in
                copy)
                    COMPREPLY=( $(compgen -f "${cur}" ) )
                    return 0
                    ;;
                *)
                    return 1
                    ;;
            esac
            ;;

        *)
            return 1
            ;;
    esac

}
complete -F _memo memo
