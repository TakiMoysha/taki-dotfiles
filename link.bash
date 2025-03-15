#!/bin/env bash
# take first argument and create links with absolute path

echo "ln -sf $(pwd)/xdg_config/$1 $XDG_CONFIG_HOME/$1"
