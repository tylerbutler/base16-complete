#!/usr/bin/env bash
# Base16 Shades of Purple - Mate Terminal color scheme install script
# Iolar Demartini Junior (http://github.com/demartini) based on Shades of Purple Theme (https://github.com/ahmadawais/shades-of-purple-vscode).

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Shades of Purple 256"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-shades-of-purple-256"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal

PROFILE_KEY="$BASE_KEY/profiles/$PROFILE_SLUG"
DEFAULT_SLUG=$("$DCONFTOOL" read "$BASE_KEY/global/default-profile" | tr -d \')
DEFAULT_KEY="$BASE_KEY/profiles/$DEFAULT_SLUG"

dcopy() {
  local from="$1"; shift
  local to="$1"; shift

  "$DCONFTOOL" dump "$from/" | "$DCONFTOOL" load "$to/"
}

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

if [ -n "$DEFAULT_SLUG" ]; then
  dcopy "$DEFAULT_KEY" "$PROFILE_KEY"
fi

dset visible-name "'$PROFILE_NAME'"
dset palette "'#1e1e3f:#d90429:#3ad900:#ffe700:#6943ff:#ff2c70:#00c5c7:#c7c7c7:#808080:#d90429:#3ad900:#ffe700:#6943ff:#ff2c70:#00c5c7:#ffffff'"
dset background-color "'#1e1e3f'"
dset foreground-color "'#c7c7c7'"
dset bold-color "'#c7c7c7'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"

glist_append "$BASE_KEY/global/profile-list" "$PROFILE_SLUG"

unset PROFILE_NAME
unset PROFILE_SLUG
unset DCONFTOOL
unset BASE_KEY
unset PROFILE_KEY
unset DEFAULT_SLUG
unset DEFAULT_KEY
