# Scheme name: Woodland
# Scheme system: 
# Scheme author: Jay Cornwall (https://jcornwall.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#231e18,fg:#cabcb1,hl:#ca7f32"\
" --color=bg+:#48413a,fg+:#,hl+:#"\
" --color=info:#bb90e2,border:#bb90e2,prompt:#b7ba53"\
" --color=pointer:#88a4d3,marker:#,spinner:#,header:#d35c5c"
