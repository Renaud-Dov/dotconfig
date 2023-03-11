SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "Copying config files $SCRIPT_DIR"

dot_list="zshrc gitconfig vimrc gdbinit p10k.zsh"
for f in $dot_list; do
    printf "Replacing %s... " $f
    rm -rf "$HOME/.$f"
    ln -s "$SCRIPT_DIR/.$f" "$HOME/.$f"
    echo done
done


config_list="i3 polybar rofi picom.conf"

# for f in $config_list; do
# # rm -rf "$HOME/.$f"
# # ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
# done
