#!/bin/bash
export PATH=$PATH:$HOME/.local/bin
if ! [ -f /root/.umr/config.yml ]
then
  wget https://raw.githubusercontent.com/JQ-Networks/UnifiedMessageRelay/master/config.yaml -O /root/.umr/config.yml
fi
python3 -m unified-message-relay run