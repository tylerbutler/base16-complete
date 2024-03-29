# Base16 Outrun Dark
# Scheme author: Hugo Delahousse (http://github.com/hugodelahousse/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#00002A'
set -l color01 '#20204A'
set -l color02 '#30305A'
set -l color03 '#50507A'
set -l color04 '#B0B0DA'
set -l color05 '#D0D0FA'
set -l color06 '#E0E0FF'
set -l color07 '#F5F5FF'
set -l color08 '#FF4242'
set -l color09 '#FC8D28'
set -l color0A '#F3E877'
set -l color0B '#59F176'
set -l color0C '#0EF0F0'
set -l color0D '#66B0FF'
set -l color0E '#F10596'
set -l color0F '#F003EF'

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
