# Scheme name: Windows High Contrast Light
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
" --color=bg:#fcfcfc,fg:#545454,hl:#fcfc54"\
" --color=bg+:#d4d4d4,fg+:#,hl+:#"\
" --color=info:#800080,border:#800080,prompt:#008000"\
" --color=pointer:#000080,marker:#,spinner:#,header:#800000"
