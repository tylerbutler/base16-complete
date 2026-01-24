# Scheme name: PaperColor Light
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
" --color=bg:#eeeeee,fg:#444444,hl:#d70000"\
" --color=bg+:#008700,fg+:#,hl+:#"\
" --color=info:#005faf,border:#005faf,prompt:#8700af"\
" --color=pointer:#d75f00,marker:#,spinner:#,header:#bcbcbc"
