# Base16 Rigel
# Scheme author: Alexander Keliris
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#00384d'
set -l color01 '#9cf087'
set -l color02 '#ffcc1b'
set -l color03 '#517f8d'
set -l color04 '#7eb2dd'
set -l color05 '#77929e'
set -l color06 '#fb94ff'
set -l color07 '#e6e6dc'
set -l color08 '#c43061'
set -l color09 '#ff5a67'
set -l color0A '#f08e48'
set -l color0B '#7fc06e'
set -l color0C '#00cccc'
set -l color0D '#1c8db2'
set -l color0E '#c694ff'
set -l color0F '#00ffff'

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
