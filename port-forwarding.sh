while true; do
  date
  if natpmpc -a 1 0 udp 60 -g 10.2.0.1 && natpmpc -a 1 0 tcp 60 -g 10.2.0.1; then
    echo "reconnecting port forwarding done"
  else
    echo "ERROR with natpmpc command"
    break
  fi
  sleep 45
done
