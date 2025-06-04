export XDG_CACHE_HOME="$HOME/linux-media/system/pcl-89/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_STATE_HOME="$HOME/.local/state"

export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"

export GOPATH="$XDG_DATA_HOME/go"
# export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CARGO_HOME="$HOME/linux-media/system/pcl-89/.cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export BUN_INSTALL="$XDG_DATA_HOME/bun"

export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export DOCKE_CONFIG="$XDG_CONFIG_HOME/docker"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NVM_DIR="$XDG_DATA_HOME/nvm"

# cargo, bun
export PATH="$CARGO_HOME/bin:$BUN_INSTALL/bin:$XDG_BIN_HOME:$PATH"

# devlab
export STOREDIR="$HOME/linux-media"

export DEVLAB_CODING_DIR="$HOME/devlab/coding"
# export DEVLAB_CONTAINERS_DIR="$STOREDIR/containers/devlab" # inspect

# homelab
export HOMELAB_CONTAINERS_DIR="$STOREDIR/containers/homelab"
