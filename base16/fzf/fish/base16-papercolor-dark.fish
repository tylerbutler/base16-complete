# Scheme name: PaperColor Dark
# Scheme system: 
# Scheme author: Jon Leopard (http://github.com/jonleopard) based on PaperColor Theme (https://github.com/NLKNguyen/papercolor-theme)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1c1c1c,fg:#808080,hl:#5faf5f"\
" --color=bg+:#5faf00,fg+:#,hl+:#"\
" --color=info:#00afaf,border:#00afaf,prompt:#af87d7"\
" --color=pointer:#ff5faf,marker:#,spinner:#,header:#585858"
