#!/bin/bash

ROOT="$(pwd)"

set -e

main () {

    "$ROOT/symlink-common.sh"

    if [[ $(uname -s) == "Darwin" ]]; then
        "$ROOT/macos/config-macos.sh"
        "$ROOT/macos/install-apps.sh"
        "$ROOT/macos/config-apps.sh"
    elif [[ $(uname -s) == "Linux" ]]; then
        #"$ROOT/install-linux.sh"
        echo "Oops!"
    fi

}

cleanup () {
    rm $HOME/.bash_history
}

main

echo All Done!
