# Scheme name: Rigel
# Scheme system: 
# Scheme author: Alexander Keliris
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#00384d,fg:#77929e,hl:#ff5a67"\
" --color=bg+:#ffcc1b,fg+:#,hl+:#"\
" --color=info:#c694ff,border:#c694ff,prompt:#7fc06e"\
" --color=pointer:#1c8db2,marker:#,spinner:#,header:#c43061"
