# Scheme name: Silk Dark
# Scheme system: 
# Scheme author: Gabriel Fontes (https://github.com/Misterio77)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#0e3c46,fg:#C7DBDD,hl:#fcab74"\
" --color=bg+:#2A5054,fg+:#,hl+:#"\
" --color=info:#756b8a,border:#756b8a,prompt:#73d8ad"\
" --color=pointer:#46bddd,marker:#,spinner:#,header:#fb6953"
