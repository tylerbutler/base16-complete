# Scheme name: Twilight
# Scheme system: 
# Scheme author: David Hart (https://github.com/hartbit)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1e1e1e,fg:#a7a7a7,hl:#cda869"\
" --color=bg+:#464b50,fg+:#,hl+:#"\
" --color=info:#9b859d,border:#9b859d,prompt:#8f9d6a"\
" --color=pointer:#7587a6,marker:#,spinner:#,header:#cf6a4c"
