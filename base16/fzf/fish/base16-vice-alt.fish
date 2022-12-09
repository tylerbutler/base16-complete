# Base16 Vice Alt
# Scheme author: Thomas Leon Highbaugh
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1b1d24'
set -l color01 '#282b36'
set -l color02 '#2f303d'
set -l color03 '#323643'
set -l color04 '#3f4859'
set -l color05 '#555e70'
set -l color06 '#b2bfd9'
set -l color07 '#f4f4f7'
set -l color08 '#ff3d81'
set -l color09 '#F67544'
set -l color0A '#ffff73'
set -l color0B '#44ffdd'
set -l color0C '#00caff'
set -l color0D '#2fb1d4'
set -l color0E '#8265ff'
set -l color0F '#ff00aa'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
