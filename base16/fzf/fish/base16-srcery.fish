# Base16 srcery
# Scheme author: 
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1C1B19'
set -l color01 '#98BC37'
set -l color02 '#FED06E'
set -l color03 '#918175'
set -l color04 '#68A8E4'
set -l color05 '#BAA67F'
set -l color06 '#FF5C8F'
set -l color07 '#FCE8C3'
set -l color08 '#EF2F27'
set -l color09 '#FF5F00'
set -l color0A '#FBB829'
set -l color0B '#519F50'
set -l color0C '#0AAEB3'
set -l color0D '#2C78BF'
set -l color0E '#E02C6D'
set -l color0F '#2BE4D0'

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
