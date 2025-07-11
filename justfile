
new-link name:
 ln -sf $(pwd)/xdg_config/{{name}} $XDG_CONFIG_HOME/{{name}}

test-stow:
  stow -v -t ~ -d . stow
