# Path to your oh-my-zsh installation.
export ZSH=/home/ivaylo/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git sublime extract sudo emoji)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/ivaylo/android-sdk-linux/tools:/home/ivaylo/android-sdk-linux/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

DOTFILES_DIR="$HOME/.dotfiles"
for DOTFILE in "$DOTFILES_DIR"/system/.{function,env,alias}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

eval "$(jump shell zsh)"
export PATH="$HOME/.rbenv/bin:$PATH"

export NVM_DIR="/home/ivaylo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(pyenv virtualenv-init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
