# Base16 Rosé Pine Moon
# Scheme author: Emilia Dunfelt &lt;edun@dunfelt.se&gt;
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#232136'
set -l color01 '#2a273f'
set -l color02 '#393552'
set -l color03 '#6e6a86'
set -l color04 '#908caa'
set -l color05 '#e0def4'
set -l color06 '#e0def4'
set -l color07 '#56526e'
set -l color08 '#eb6f92'
set -l color09 '#f6c177'
set -l color0A '#ea9a97'
set -l color0B '#3e8fb0'
set -l color0C '#9ccfd8'
set -l color0D '#c4a7e7'
set -l color0E '#f6c177'
set -l color0F '#56526e'

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
