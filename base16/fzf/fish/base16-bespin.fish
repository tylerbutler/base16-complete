# Scheme name: Bespin
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
" --color=bg:#28211c,fg:#8a8986,hl:#cf7d34"\
" --color=bg+:#5e5d5c,fg+:#,hl+:#"\
" --color=info:#9b859d,border:#9b859d,prompt:#54be0d"\
" --color=pointer:#5ea6ea,marker:#,spinner:#,header:#cf6a4c"
