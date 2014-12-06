function jasmineSpec() {
  RAILS_ENV=test bundle exec rake spec:javascript SPEC=$1
}

function dbReset() {
  pg_ctl -D /usr/local/var/postgres stop -s -m fast
  pg_ctl -D /usr/local/var/postgres -l logfile start
}

function dbClean() {
  dbReset
  bundle exec rake db:drop db:create
}

function dbImport() {
  dbClean
  psql -U jpolanco -d pedanco -f $1
}

function dbDump() {
  pg_dump -U jpolanco pedanco -f $1
}


alias sub='open -a "/Applications/Sublime Text 3.app"'
alias powr='powify restart'
alias zt='zeus test'
alias zta='zeus test spec'
alias zc='zeus console'
alias zdb='zeus dbconsole'
alias zr='zeus rails'
alias jta='RAILS_ENV=test bundle exec rake spec:javascript'
alias jt=jasmineSpec
alias dbr=dbReset
alias dbc=dbClean
alias dbimport=dbImport
alias dbdump=dbDump
