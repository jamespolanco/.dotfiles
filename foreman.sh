if [ -n `which foreman` ]; then
  alias fdev='foreman start --procfile=Procfile.dev -e development.env'
  alias ftest='foreman start --procfile=Procfile.test -e test.env'
fi