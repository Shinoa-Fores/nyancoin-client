#!/usr/bin/env bash
set -eu
set -o pipefail

lynx -dump https://www.nyanchain.com/pr.nyan | awk -v RS='([0-9]+\\.){3}[0-9]+' 'RT{print RT}' | awk '{print "addnode=" $0}' >>~/.nyancoin/nyancoin.conf

