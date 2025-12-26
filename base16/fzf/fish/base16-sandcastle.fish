# Scheme name: Sandcastle
# Scheme system: 
# Scheme author: George Essig (https://github.com/gessig)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282c34,fg:#a89984,hl:#a07e3b"\
" --color=bg+:#3e4451,fg+:#,hl+:#"\
" --color=info:#d75f5f,border:#d75f5f,prompt:#528b8b"\
" --color=pointer:#83a598,marker:#,spinner:#,header:#83a598"
