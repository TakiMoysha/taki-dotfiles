# create links with absolute path
ln -sf ($pwd)/.profile $HOME/.profile
ln -sf ($pwd)/xdg_config/zsh $XDG_CONFIG_DIR/zsh
ln -sf ($pwd)/xdg_config/vim $XDG_CONFIG_DIR/vim

## update /etc/zsh/zshenv added:
# if [[ -z "$XDG_CONFIG_HOME" ]]
# then
#   export XDG_CONFIG_HOME="$HOME/.config/"
# fi
#
# if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
# then
#   export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
# fi

# check if scrip run from setup.bash directory

# check XDG Env and exit if not set

# debug
# cat $HOME/dotfiles/.zshrc
# cat $(pwd)/.zshrc
