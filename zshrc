# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

set t_Co=256

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git macos)

source $ZSH/oh-my-zsh.sh

export EDITOR="subl -w"

# put alias after source $ZSH/oh-my-zsh.sh so we can override oh my zsh defined ones
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ls="ls -F"

# Autojump directory jumper
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

load-tfswitch() {
  local tfswitchrc_path=".terraform-version"

  if [ -f "$tfswitchrc_path" ]; then
    tfswitch
  fi
}
add-zsh-hook chpwd load-tfswitch
load-tfswitch
