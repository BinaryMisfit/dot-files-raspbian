#!/usr/bin/env bash
BASE_DIR="$HOME/.dotfiles"
if [[ -d "$BASE_DIR"/.git ]]; then
  VERSION_CURRENT=$(git -C "$BASE_DIR" rev-parse HEAD)
  VERSION_NEW=$(git ls-remote https://github.com/BinaryMisfit/dot-files-ubuntu HEAD | awk '{ print $1 }')
  if [[ "$VERSION_CURRENT" != "$VERSION_NEW" ]]; then
    echo -ne "Config files, updating...\r"
    COMMAND="git -C $BASE_DIR pull --autostash --all --recurse-submodules --rebase --quiet"
    if bash -c "$COMMAND" 2>&1; then
      echo -ne "Config files, installing...\r"
      echo -ne "\r\n"
      COMMAND="$BASE_DIR/install.sh"
      bash -c "$COMMAND" >/dev/null 2>&1
    fi
  fi
fi