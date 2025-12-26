# Scheme name: Gruvbox dark, medium
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
" --color=bg:#282828,fg:#d5c4a1,hl:#fe8019"\
" --color=bg+:#504945,fg+:#,hl+:#"\
" --color=info:#d3869b,border:#d3869b,prompt:#b8bb26"\
" --color=pointer:#83a598,marker:#,spinner:#,header:#fb4934"
