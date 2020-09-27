#!/bin/user/env bash

DOTBOT_DIR="modules/dotbot"
DOTBOT_BIN="bin/dotbot"
ZIM_HOME="${DOTFILES_PATH}/modules/zimfw"

self_update() {
  cd "$DOTFILES_PATH" || exit

  git fetch
  if [[ $(project_status) == "behind" ]]; then
    log::note "Needs to pull!"
    git pull && exit 0 || log::error "Failed"
  fi
}

update_submodules() {
  cd "$ZIM_HOME" || exit

  zsh "$ZIM_HOME/zimfw.zsh" upgrade
  rm -rf "$ZIM_HOME/modules/"* && zsh "$ZIM_HOME/zimfw.zsh" install
  zsh "$ZIM_HOME/zimfw.zsh" update

  git submodule foreach "git discard"
}

apply_symlinks() {
  local -r CONFIG="$DOTFILES_PATH/symlinks/$1"
  shift

  echo
  "$DOTFILES_PATH/$DOTBOT_DIR/$DOTBOT_BIN" -d "$DOTFILES_PATH" -c "$CONFIG" "$@"
  echo
}

apply_common_symlinks() {
  apply_symlinks "conf.yaml"
}

apply_linux_symlinks() {
  apply_symlinks "conf.linux.yaml"

}

project_status() {
  cd "$DOTFILES_PATH" || exit

  local -r UPSTREAM="master"
  local -r LOCAL=$(git rev-parse @)
  local -r REMOTE=$(git rev-parse "$UPSTREAM")
  local -r BASE=$(git merge-base @ "$UPSTREAM")

  if [[ "$LOCAL" == "$REMOTE" ]]; then
    echo "synced"
  elif [[ "$LOCAL" == "$BASE" ]]; then
    echo "behind"
  elif [[ "$REMOTE" == "$BASE" ]]; then
    echo "ahead"
  else
    echo "diverged"
  fi
}
