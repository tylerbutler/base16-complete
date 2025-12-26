# Scheme name: Gruvbox light, medium
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
" --color=bg:#fbf1c7,fg:#504945,hl:#af3a03"\
" --color=bg+:#d5c4a1,fg+:#,hl+:#"\
" --color=info:#8f3f71,border:#8f3f71,prompt:#79740e"\
" --color=pointer:#076678,marker:#,spinner:#,header:#9d0006"
