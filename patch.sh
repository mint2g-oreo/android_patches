#!/bin/bash

SOURCE_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  read -r path tracking remote branch url <<<"$LINE"
  cd "$SOURCE_DIR/$path"
  printf "$path \n"
  if [[ "$1" == "log" ]]; then
    git log --oneline --first-parent "$tracking/$branch^..$remote/$branch"
    printf '\n'
  elif [[ "$1" == "checkout" ]]; then
    git checkout "$remote/$branch"
    printf '\n'
  elif [[ "$1" == "rebase" ]]; then
    git checkout "$remote/$branch"
    git rebase "$tracking/$branch"
    printf '\n'
  elif [[ "$1" == "forcepush" ]]; then
    git checkout "$remote/$branch"
    git push --force "$remote" "$branch"
    printf '\n'
  elif [[ "$1" == "unshallow" ]]; then
    git fetch --depth=5 "$tracking" "$branch"
    printf '\n' 
  fi

done < "$SCRIPT_DIR/patch.list"
