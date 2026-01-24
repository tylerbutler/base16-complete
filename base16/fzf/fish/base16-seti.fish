# Scheme name: Seti UI
# Scheme system: 
# Scheme author: 
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#151718,fg:#d6d6d6,hl:#db7b55"\
" --color=bg+:#3B758C,fg+:#,hl+:#"\
" --color=info:#a074c4,border:#a074c4,prompt:#9fca56"\
" --color=pointer:#55b5db,marker:#,spinner:#,header:#Cd3f45"
