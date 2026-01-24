# Scheme name: Windows NT Light
# Scheme system: 
# Scheme author: Fergus Collins (https://github.com/C-Fergus)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#ffffff,fg:#808080,hl:#ffff00"\
" --color=bg+:#d5d5d5,fg+:#,hl+:#"\
" --color=info:#800080,border:#800080,prompt:#008000"\
" --color=pointer:#000080,marker:#,spinner:#,header:#800000"
