# Base16 Vice Alt
# Scheme author: Thomas Leon Highbaugh
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1c1c1c'
set -l color01 '#282828'
set -l color02 '#2c2c2c'
set -l color03 '#323232'
set -l color04 '#3c3c3c'
set -l color05 '#555555'
set -l color06 '#b6b6b6'
set -l color07 '#d1d1d1'
set -l color08 '#ff3d81'
set -l color09 '#F67544'
set -l color0A '#ffff73'
set -l color0B '#44ffdd'
set -l color0C '#00caff'
set -l color0D '#2fb1d4'
set -l color0E '#8265ff'
set -l color0F '#F83D80'

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
