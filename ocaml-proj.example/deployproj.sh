#!/bin/bash
# Deploy sample project specific directories to the directory
# containing BAP

set -e

BAPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ".." && pwd )"

function copy {
    cp -r $BAPDIR/$1.example $BAPDIR/../$1
}

copy ocaml-proj
copy utils-proj
copy tests-proj
