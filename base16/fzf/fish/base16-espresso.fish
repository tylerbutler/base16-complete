# Scheme name: Espresso
# Scheme system: 
# Scheme author: Unknown. Maintained by Alex Mirrington (https://github.com/alexmirrington)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2d2d2d,fg:#cccccc,hl:#f9a959"\
" --color=bg+:#515151,fg+:#,hl+:#"\
" --color=info:#d197d9,border:#d197d9,prompt:#a5c261"\
" --color=pointer:#6c99bb,marker:#,spinner:#,header:#d25252"
