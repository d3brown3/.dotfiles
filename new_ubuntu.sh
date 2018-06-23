#!usr/bin/bash
# Setting up a new ubuntu machine

# install required softwares
sudo apt-get -y install zsh vim tmux curl glances fcitx fcitx-rime fcitx-config-gtk tig stow ranger i3 i3blocks i3status dmenu cmake

# install fzf, a command-lind fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# change shell to zsh
chsh -s /usr/bin/zsh

# antigen as zsh plugin manager
# curl -L git.io/antigen > antigen.zsh # already have it in .dotfiles

# zplug as zsh plugin manager
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# tpm as tmux plugin manager
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugs/tpm

# vim-plug as vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# load github dotfiles
# git clone https://github.com/liangquanzhou/.dotfiles.git

# install plum for fcitx as rime config manager
cd ~/.config
mkdir plum
git clone --depth 1 https://github.com/rime/plum.git
cd plum
rime_frontend=fcitx-rime bash rime-install
