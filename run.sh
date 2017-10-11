nodejs index.js &
nginx -g "daemon off;" &
sleep 10 && tail -f /access /error
