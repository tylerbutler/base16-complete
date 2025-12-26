# Scheme name: Gruvbox dark, pale
# Scheme system: 
# Scheme author: Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#262626,fg:#dab997,hl:#ff8700"\
" --color=bg+:#4e4e4e,fg+:#,hl+:#"\
" --color=info:#d485ad,border:#d485ad,prompt:#afaf00"\
" --color=pointer:#83adad,marker:#,spinner:#,header:#d75f5f"
