# Scheme name: Material Vivid
# Scheme system: 
# Scheme author: joshyrobot
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#202124,fg:#80868b,hl:#ff9800"\
" --color=bg+:#323639,fg+:#,hl+:#"\
" --color=info:#673ab7,border:#673ab7,prompt:#00e676"\
" --color=pointer:#2196f3,marker:#,spinner:#,header:#f44336"
