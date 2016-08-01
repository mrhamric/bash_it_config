cite 'about-alias'
about-alias 'common git abbreviations'

# Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias gus='git reset HEAD'
alias gm="git merge"
alias g='git'
alias get='git'
alias go='git checkout'
alias gst='git status'
alias gs='git status'
alias gss='git stash -u'
alias gsp='git stash pop'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gsl="git shortlog -sn"
alias gw="git whatchanged"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"
alias gra='git commit --amend --no-edit'
alias undeployed="git rev-list $(curl -sI www.statuspage.io | grep -i X-StatusPage-Version | sed -e 's/X-StatusPage-Version: //' | tr -d '\r\n' | awk '{print $1"..HEAD"}')"

# StatusPage
alias rc='foreman run bin/rails c'
alias rdb='foreman run bin/rails db'
alias rpt='foreman run rake parallel:test[5]'
alias tdl='tail -5000f log/development.log'
alias ttl='tail -5000f log/test.log'
alias cap='bundle exec cap'
alias ss='bin/spring stop'
alias tst='foreman run bundle exec ruby'

case $OSTYPE in
  darwin*)
    alias gtls="git tag -l | gsort -V"
    ;;
  *)
    alias gtls='git tag -l | sort -V'
    ;;
esac

if [ -z "$EDITOR" ]; then
    case $OSTYPE in
      linux*)
        alias gd='git diff | vim -R -'
        ;;
      darwin*)
        alias gd='git diff | mate'
        ;;
      *)
        alias gd='git diff'
        ;;
    esac
else
    alias gd="git diff | $EDITOR"
fi
