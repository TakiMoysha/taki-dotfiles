export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# bun completions
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[ -s "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"


# ZSH_THEME="awesomepanda"
# ZSH_THEME="cloud"
ZSH_THEME="daveverwer"

source $ZSH/oh-my-zsh.sh # should be after zsh env variables

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true" # to use hyphen-insensitive completion, [case-sensitity must be off. _ and - will be interchangeable]

zstyle ':omz:update' frequency 13 # how often to check for updates

# DISABLE_MAGIC_FUNCTIONS="true" # if pasting urls and other text is messed up
# DISABLE_LS_COLORS="true" # to colors are messed up
# DISABLE_AUTO_TITLE="true" # disables automatic title setting
# ENABLE_CORRECTION="true" # enable command auto-correction

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rust bun sudo supervisor docker zsh-uv-env dotenv taskwarrior uv)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# development aliases
alias init_pypackage="uv init --package"

function unpack() {
    if [[ -f $1 ]]; then
        case $1 in
          *.tar.bz2) tar xvjf $1;;
          *.tar.gz) tar xvzf $1;;
          *.tar.xz) tar xvJf $1;;
          *.tar.lzma) tar --lzma xvf $1;;
          *.bz2) bunzip $1;;
          *.rar) unrar $1;;
          *.gz) gunzip $1;;
          *.tar) tar xvf $1;;
          *.tbz2) tar xvjf $1;;
          *.tgz) tar xvzf $1;;
          *.zip) unzip $1;;
          *.Z) uncompress $1;;
          *.7z) 7z x $1;;
          *) echo "'$1' cannot be extracted via >ex<";;
    esac
    else
        echo "'$1' is not a valid file"
    fi
}


function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }
