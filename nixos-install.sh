#!/bin/sh
dot_list="bashrc zshrc emacs gitconfig vimrc thunderbird"
for f in $dot_list; do
rm -rf "$HOME/.$f"
ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done

nix-channel --add https://nixos.org/channels/nixos-22.05-small nixos
nix-channel --update
nix-env -iA nixos.zsh nixos.oh-my-zsh
#chsh -s $(which zsh) # set default to zsh

if [ -d "$HOME/.oh-my-zsh" ]; then
	rm -rf "$HOME/.oh-my-zsh"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""  --keep-zshrc --unattended  --skip-chsh


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
ohmyzsh="$HOME/.zshrc.pre-oh-my-zsh"
[ -f $ohmyzsh ] && mv -f "$ohmyzsh" ".zshrc"
