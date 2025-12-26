# Scheme name: Heetch Dark
# Scheme system: 
# Scheme author: Geoffrey Teale (tealeg@gmail.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#190134,fg:#BDB6C5,hl:#5BA2B6"\
" --color=bg+:#5A496E,fg+:#,hl+:#"\
" --color=info:#82034C,border:#82034C,prompt:#C33678"\
" --color=pointer:#BD0152,marker:#,spinner:#,header:#27D9D5"
