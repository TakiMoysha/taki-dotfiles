# Tools

`xdg-ninja` - для настройки XDG окружения;

#

Edit `/etc/security/pam_env.conf` file. Added:

```conf
XDG_CONFIG_HOME     DEFAULT=@{HOME}/.config
XDG_STATE_HOME      DEFAULT=@{HOME}/.local/state
XDG_DATA_HOME       DEFAULT=@{HOME}/.local/share
XDG_CACHE_HOME      DEFAULT=@{HOME}/.cache
```

```conf
XDG_CURRENT_DESKTOP=sway
XDG_SESSION_DESKTOP=sway
DRI_PRIME=1 # for second gpu
```

#

For Wayland: `envvars.conf -> ~/.config/environment/envvars.conf`

#

## ZRAM

Компрессия для блоков памяти в RAM.

```conf
XDG_CURRENT_DESKTOP=sway
XDG_SESSION_DESKTOP=sway

XDG_CONFIG_HOME=$HOME/.config
XDG_STATE_HOME=$HOME/.local/state
XDG_DATA_HOME=$HOME/.local/share
XDG_CACHE_HOME=$HOME/.cache

ZDOTDIR=${XDG_CONFIG_HOME}/zsh

DRI_PRIME=1
```
