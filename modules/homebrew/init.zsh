#
# Defines Homebrew aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != darwin* ]]; then
  return 1
fi

#
# Aliases
#

alias brewc='brew cleanup'
alias bi='brew install'
alias brewl='brew list'
alias brews='brew search'
alias brewu='brew update && brew upgrade'
alias brewx='brew remove'

#
# homebrew-cask
#

alias bci='brew cask install'
alias bcs='brew cask search'
alias bcu='brew cask uninstall'
