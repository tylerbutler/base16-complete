# Scheme name: Material Lighter
# Scheme system: 
# Scheme author: Nate Peterson
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#FAFAFA,fg:#80CBC4,hl:#F76D47"\
" --color=bg+:#CCEAE7,fg+:#,hl+:#"\
" --color=info:#7C4DFF,border:#7C4DFF,prompt:#91B859"\
" --color=pointer:#6182B8,marker:#,spinner:#,header:#FF5370"
