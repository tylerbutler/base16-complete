# Base16 Spaceduck
# Author: Guillermo Rodriguez (pineapplegiant)

set -l color00 '#000000'
set -l color01 '#5ccc96'
set -l color02 '#b3a1e6'
set -l color03 '#686f9a'
set -l color04 '#00a3cc'
set -l color05 '#686f9a'
set -l color06 '#f2ce00'
set -l color07 '#f0f1ce'
set -l color08 '#e33400'
set -l color09 '#e33400'
set -l color0A '#b3a1e6'
set -l color0B '#5ccc96'
set -l color0C '#7a5ccc'
set -l color0D '#00a3cc'
set -l color0E '#f2ce00'
set -l color0F '#7a5ccc'

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
