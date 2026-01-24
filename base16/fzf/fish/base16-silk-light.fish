# Scheme name: Silk Light
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
" --color=bg:#E9F1EF,fg:#385156,hl:#D27F46"\
" --color=bg+:#90B7B6,fg+:#,hl+:#"\
" --color=info:#6E6582,border:#6E6582,prompt:#6CA38C"\
" --color=pointer:#39AAC9,marker:#,spinner:#,header:#CF432E"
