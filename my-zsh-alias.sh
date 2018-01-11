function sharefile(){
  local workingdir=${PWD#}
  echo "share file at " $workingdir
  http-server $workingdir
  return 1;
}
alias q="exit"
alias ..="cd .."
alias c="clear"

alias off="shutdown -h now"
alias restart="shutdown -r now"
alias share="sharefile"
alias random="date | md5sum"

alias subnow_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d subnow_dev"
alias ttek_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d ttek_microsite_dev"

alias beautiful_life="mpv $HOME/Music/Beautiful\ Life/* --no-video --loop-playlist=inf"
alias beethoven="mpv $HOME/Music/Beethoven/* --no-video --loop-playlist=inf"


alias ser="iex -S mix phoenix.server"
alias docker_maria="cd /home/nguyenvinhlinh/Projects/docker-services/mariadb; sudo docker-compose up -d;"
alias docker_postgres="cd /home/nguyenvinhlinh/Projects/docker-services/postgres/; sudo docker-compose up -d;"
