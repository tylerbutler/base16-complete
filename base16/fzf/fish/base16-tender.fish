# Scheme name: tender
# Scheme system: 
# Scheme author: Jacobo Tabernero (https://github/com/jacoborus/tender.vim)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282828,fg:#eeeeee,hl:#dc9656"\
" --color=bg+:#484848,fg+:#,hl+:#"\
" --color=info:#d3b987,border:#d3b987,prompt:#c9d05c"\
" --color=pointer:#b3deef,marker:#,spinner:#,header:#f43753"
