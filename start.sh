#!/bin/sh
export PATH=$PATH:$HOME/.local/bin
if ! [ -f /root/.umr/config.yaml ]
then
  wget https://raw.githubusercontent.com/JQ-Networks/UnifiedMessageRelay/master/config.yaml -O /root/.umr/config.yaml
fi
unified_message_relay run