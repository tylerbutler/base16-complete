# Scheme name: Apathy
# Scheme system: 
# Scheme author: Jannik Siebert (https://github.com/janniks)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#031A16,fg:#81B5AC,hl:#3E7996"\
" --color=bg+:#184E45,fg+:#,hl+:#"\
" --color=info:#4C963E,border:#4C963E,prompt:#883E96"\
" --color=pointer:#96883E,marker:#,spinner:#,header:#3E9688"
