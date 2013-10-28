#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Settings
#
#

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
  || _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
  || _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
  || _git_log_brief_format='%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'

# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
  || _git_status_ignore_submodules='none'

#
# Aliases
#

# Git
alias g='git'
alias gd='git diff'
alias gdc='git diff --cached'
alias gs='git status -sb'


# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'
alias gbs='git show-branch'
alias gcb='git create-branch'
alias delete-merged-branches="git co master && git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d"

# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --amend'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcp='git cherry-pick --ff'

# Fetch (f)
alias gf='git fetch'
alias gfum='git fetch upstream && git merge upstream/master'
alias gcl='git clone'
alias gpu='git pull'

# Index (i)
alias ga='git add'
alias gaa='git add --all'
alias gta='git tag -a -m'

# Log (l)
alias gl='git lg'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# Merge (m)
alias gm='git merge'
alias gmt='git mergetool'
alias gmb='git merge-branch'

# Push (p)
alias gp='git push'
alias gphm='git push heroku master'
alias gphb='git push && hub browse'
alias gpt='git push --tags'
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

# Remote (R)
alias gR='git remote'
alias gRa='git remote add'
alias gRx='git remote rm'
alias gRm='git remote rename'
alias gRs='git remote show'

# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule foreach git pull origin master'
alias gSx='git-submodule-remove'

# Hub
alias hb='hub browse'
alias hc='hub create'
alias hpr='hub pull-request'

# Git Extras
alias gF='git feature'
alias gFf='git feature finish'
