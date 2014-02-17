#
# Defines Ruby on Rails aliases.
#
# Authors:
#   Robby Russell <robby@planetargon.com>
#   Jake Bell <jake.b.bell@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load dependencies.
pmodload 'ruby'

# Return if requirements are not found.
if (( ! $+commands[bundle] )); then
  return 1
fi

#
# Aliases
#

alias ror='rails'
alias rorc='rails console'
alias rordc='rails dbconsole'
alias rordm='rake db:migrate'
alias rordM='rake db:migrate db:test:clone'
alias rordr='rake db:rollback'
alias rorg='rails generate'
alias rorl='tail -f "$(ruby-app-root)/log/development.log"'
alias rorlc='rake log:clear'
alias rorp='rails plugin'
alias rorr='rails runner'
alias rors='rails server'
alias rorsd='rails server --debugger'
alias rorx='rails destroy'
