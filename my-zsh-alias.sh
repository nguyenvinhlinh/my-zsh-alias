function sharefile(){
  local workingdir=${PWD#}
  echo "share file at " $workingdir
  http-server $workingdir
  return 1;
}
alias q="exit"
alias ..="cd .."
alias c="clear"
alias cat="pygmentize -g"
alias catt="/usr/bin/cat"
alias ariaw='touch /home/nguyenvinhlinh/.aria2/session.txt;aria2c --enable-rpc --rpc-listen-all --save-session=/home/nguyenvinhlinh/.aria2/session.txt --input-file=/home/nguyenvinhlinh/.aria2/session.txt -x16 -s16 -k1M --dir=/home/nguyenvinhlinh/Downloads --daemon --on-download-complete=/home/nguyenvinhlinh/.config/conkeror/notification-aria2.sh;'
alias off="shutdown -h now"
alias restart="shutdown -r now"
alias share="sharefile"
alias jekyll_blog="jekyll server --source ~/Projects/Self-Learning/nguyenvinhlinh.github.io"
alias random="date | md5sum"

alias beethoven="mpv /home/nguyenvinhlinh/Music/Beethoven --no-video --shuffle --loop"
alias jazz1="mpv /home/nguyenvinhlinh/Music/VA\ -\ Winter\ Jazz\ Lounge\ Chillout\ Sensual\ Smooth\ \(2015\)\ \[MP3\ 320\ Kbps\] --shuffle --no-video --loop"
alias jazz2="mpv /home/nguyenvinhlinh/Music/50\ Shades\ of\ Jazz/ --shuffle --no-video --loop"
alias blue="mpv /home/nguyenvinhlinh/Music/MILES\ DAVIS-Kind\ of\ Blue\ 1959-Mono\ \&\ Stereo-\[320Kbps\]/CD/Kind\ of\ Blue\ \(Stereo\)/ --loop --shuffle --no-video"
alias galaxy="mpv /home/nguyenvinhlinh/Music/Guardian\ of\ the\ Galaxy --no-video --shuffle --loop"
alias unleashed="mpv /home/nguyenvinhlinh/Music/Skillet\ -\ Unleashed\ (2016)/ --no-video --shuffle"
alias iea_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d iea_dev"
alias vetter_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d vetter_dev"
alias mind_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d mindoula_server_dev"
alias the_big_boy_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d the_big_boy_dev"
alias subnow_db="psql -U nguyenvinhlinh -h localhost -p 15432 -d subnow_dev"


alias ser="iex -S mix phoenix.server"
alias docker_maria="cd /home/nguyenvinhlinh/Projects/docker-services/mariadb; docker-compose up -d;"
alias docker_postgres="cd /home/nguyenvinhlinh/Projects/docker-services/postgres/; docker-compose up -d;"
