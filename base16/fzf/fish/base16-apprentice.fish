# Base16 Apprentice
# Scheme author: romainl
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#262626'
set -l color01 '#AF5F5F'
set -l color02 '#5F875F'
set -l color03 '#87875F'
set -l color04 '#5F87AF'
set -l color05 '#5F5F87'
set -l color06 '#5F8787'
set -l color07 '#6C6C6C'
set -l color08 '#444444'
set -l color09 '#FF8700'
set -l color0A '#87AF87'
set -l color0B '#FFFFAF'
set -l color0C '#87AFD7'
set -l color0D '#8787AF'
set -l color0E '#5FAFAF'
set -l color0F '#BCBCBC'

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
