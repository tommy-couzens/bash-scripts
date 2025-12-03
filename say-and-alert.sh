#!/usr/bin/env bash

# This script is used when I run some long running command such as docker or terraform
# I add it the the end of the command to let me know when its finished
# Use it by sourcing this file, i.e. source say-and-alert.sh
# e.g. docker build -f my-giant-dockerfile . && sa "dockerfile build done"

say_and_alert() {
  message=$1
  if [ -z $message ]; then message="Command has finished running"; fi
  say $message
  osascript -e "display alert \"$message\""
}

alias sa=say_and_alert
