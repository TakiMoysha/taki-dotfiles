export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_STATE_HOME="$HOME/.local/state"

export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"

export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export BUN_INSTALL="$XDG_DATA_HOME/bun"

# cargo, bun
export PATH="$CARGO_HOME/bin:$BUN_INSTALL/bin:$XDG_BIN_HOME:$PATH"
