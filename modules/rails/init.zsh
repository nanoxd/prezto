#
# Defines Ruby on Rails aliases.
#
# Authors:
#   Robby Russell <robby@planetargon.com>
#   Jake Bell <jake.b.bell@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[rails] )); then
  return 1
fi

#
# Aliases (Compatible with Rails 2)
#

alias ror='rails'
alias rorc='ror console'
alias rordc='ror dbconsole'
alias rordm='rake db:migrate'
alias rordM='rake db:migrate db:test:clone'
alias rordr='rake db:rollback'
alias rorg='ror generate'
alias rorgc='rorg controller'
alias rorgm='rorg model'
alias rorgmig='rog migration'
alias rorl='tail -f log/development.log'
alias rorlc='rake log:clear'
alias rorp='ror plugin'
alias rorr='ror routes'
alias rors='ror server'
alias rorsd='ror server --debugger'
alias rorx='ror destroy'


