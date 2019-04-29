#!/bin/bash

# https://github.com/tinco/irssi-container/blob/master/container/service/irssi/run

set -e
echo "Starting session" >> /home/user/irssi-sessions.log
tmux new-session -s irssi -d irssi 2>&1 >> /home/user/irssi-sessions.log
echo "Session started" >> /home/user/irssi-sessions.log

set +e
while [ $? -eq 0 ]
do
  sleep 1
  tmux has-session -t irssi
done

echo "Session ended" >> /home/user/irssi-sessions.log