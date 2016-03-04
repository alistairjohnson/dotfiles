# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache#

# vi mode for BASH
set -o vi

export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
