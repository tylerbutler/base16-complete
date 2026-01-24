# Scheme name: Hopscotch
# Scheme system: 
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#322931,fg:#b9b5b8,hl:#fd8b19"\
" --color=bg+:#5c545b,fg+:#,hl+:#"\
" --color=info:#c85e7c,border:#c85e7c,prompt:#8fc13e"\
" --color=pointer:#1290bf,marker:#,spinner:#,header:#dd464c"
