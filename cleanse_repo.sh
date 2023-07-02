#!/usr/bin/env bash

###  DEBUG          ###########################################################
set -u -e -o errtrace -o pipefail
trap "echo ""errexit: line $LINENO. Exit code: $?"" >&2" ERR
IFS=$'\n\t'

###  DESCRIPTION    ###########################################################
# A script to

###  VARIABLES      ###########################################################

_FILES_TO_REMOVE=("def.csl" "def.tex" "*.log" "*.pdf" "*.deb" "*.lua")
_SETUP_SCRIPT="code/config/setup"
##  FUNCTIONS      ###########################################################


_clear_down() {
#the def.csl and def.tex files aren't mine, let's remove them
  for f in "${_FILES_TO_REMOVE[@]}"; do
    find .  -iname "$f" -print -delete
  done
}

_set_up() {
  _PATH="${_SETUP_SCRIPT%/*}"
  _SCRIPT="${_SETUP_SCRIPT##*/}"
  cd "$_PATH" &&  ./"$_SCRIPT"
}
###  MAIN           ###########################################################


_main() {
    if [[ -z "$*" ]]
        then _clear_down;
    fi
    while getopts ":du" opt; do
        case $opt in
            d)
            _clear_down;;
            u)
            _set_up;;
            \?)
            echo "Invalid option: -$OPTARG" >&2
            ;;
        esac
    done
}

_main "$@"
