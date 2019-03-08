cite 'about-alias'
about-alias 'common git abbreviations'

# Aliases
alias ga='git add'
alias g='git'
alias get='git'
alias go='git checkout'
alias gs='git status'
alias gss='git stash -u'
alias gsp='git stash pop'
alias gpr='git pull --rebase'
alias gc='git commit -v'
alias gcm='git commit  -v -m'
alias gb='git branch'
alias gcount='git shortlog -sn'
alias gdel='git branch -D'
alias gra='git commit --amend --no-edit'
alias cu='git pull upstream xyz --rebase && git push origin xyz'

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
