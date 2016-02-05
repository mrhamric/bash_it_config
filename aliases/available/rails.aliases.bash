cite 'about-alias'
about-alias 'rails abbreviations'

# Rails Commands
alias r='rails'
alias rg='rails g'
alias rs='rails s'
alias rn='rails new'
alias rp='rails plugin'
alias ra='rails application'
alias migpare='rake db:migrate && RAILS_ENV=test rake db:migrate'
alias rake='bundle exec rake'

alias sc='script/console'
alias restartapp='touch tmp/restart.txt'
alias restart='touch tmp/restart.txt'  # restart passenger
alias devlog='tail -f log/development.log'
alias taild='tail -f log/development.log' # tail dev log

#StatusPage Specific
#alias rails='foreman run bin/rails'
#alias rake='foreman run bin/rake'
