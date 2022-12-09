#!/usr/bin/env bash
# Base16 Windows High Contrast Light - Mate Terminal color scheme install script
# Fergus Collins (https://github.com/C-Fergus)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Windows High Contrast Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-windows-highcontrast-light"
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
dset palette "'#fcfcfc:#800000:#008000:#808000:#000080:#800080:#008080:#545454:#c0c0c0:#fcfc54:#e8e8e8:#d4d4d4:#7e7e7e:#2a2a2a:#54fc54:#000000'"
dset background-color "'#fcfcfc'"
dset foreground-color "'#545454'"
dset bold-color "'#545454'"
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