#!/usr/bin/env bash
if [ -n "$TMUX" ]; then
  exit 0
fi

if [ -n "$TERMINAL_EMULATOR" ]; then
  exit 0
fi

echo "$(hostname) is running $(lsb_release -d -s) with kernel $(uname -r)."
echo -ne "Config files, checking\r"
if dig +short github.com &>/dev/null; then
  if [[ -f $HOME/.dotfiles/update_check.sh ]]; then
    source $HOME/.dotfiles/update_check.sh
  else
    echo -ne "\r\n"
  fi
else
  echo -ne "\r\n"
fi