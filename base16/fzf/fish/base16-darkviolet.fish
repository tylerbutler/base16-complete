# Scheme name: Dark Violet
# Scheme system: 
# Scheme author: ruler501 (https://github.com/ruler501/base16-darkviolet)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#b08ae6,hl:#bb66cc"\
" --color=bg+:#432d59,fg+:#,hl+:#"\
" --color=info:#7e5ce6,border:#7e5ce6,prompt:#4595e6"\
" --color=pointer:#4136d9,marker:#,spinner:#,header:#a82ee6"
