if [ -n `which psql` ]; then
  alias pg-start='pg_ctl -D /usr/local/var/postgres -l logfile start'
  alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
fi
