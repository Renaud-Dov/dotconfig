#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR
rofi -no-config -no-lazy-grab -show drun -modi drun -theme $HOME/.config/rofi/launcher.rasi

