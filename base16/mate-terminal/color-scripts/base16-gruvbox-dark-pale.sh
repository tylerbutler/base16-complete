#!/usr/bin/env bash
# Base16 Gruvbox dark, pale - Mate Terminal color scheme install script
# Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Gruvbox dark, pale"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-gruvbox-dark-pale"
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
dset palette "'#262626:#d75f5f:#afaf00:#ffaf00:#83adad:#d485ad:#85ad85:#dab997:#8a8a8a:#ff8700:#3a3a3a:#4e4e4e:#949494:#d5c4a1:#d65d0e:#ebdbb2'"
dset background-color "'#262626'"
dset foreground-color "'#dab997'"
dset bold-color "'#dab997'"
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
