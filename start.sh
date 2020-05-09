#!/bin/bash
if ![ -f /root/.umr/config.yml ]
then
  wget https://raw.githubusercontent.com/JQ-Networks/UnifiedMessageRelay/master/config.yaml -O /root/.umr/config.yml
fi
unified-message-relay run