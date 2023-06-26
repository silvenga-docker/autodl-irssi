#!/bin/bash

# https://github.com/tinco/irssi-container/blob/master/container/service/irssi/run

set -e
tmux new-session -s irssi -d irssi
echo "Session started"

set +e
while [ $? -eq 0 ]
do
  sleep 1
  tmux has-session -t irssi
done

echo "Session ended"
