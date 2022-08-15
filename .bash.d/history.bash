#!/usr/bin/env bash

__bhs_root="$HOME/.bash_history.d"
__bhs_main_history="$HOME/.bash_history.d/history"

if [ ! -d "$__bhs_root" ]; then
    mkdir "$__bhs_root"
fi

HISTFILE="$HOME/.bash_history.d/history-$(date +%Y-%m-%dT%H:%M:%S)-$$"
HISTFILESIZE=-1
HISTSIZE=-1
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "

shopt -s lithist

bhs_import_untimed_history() {
    local filename="$1"

    cat -- "$1" | sed -e 's/^/#1\n/' >> "$__bhs_root/history--untimed"
}

bhs_merge_history() {
    cat "$__bhs_root"/history-* \
        > "$__bhs_main_history"
}

history -r "$__bhs_main_history"
