# Scheme name: Mocha
# Scheme system: 
# Scheme author: Chris Kempson (http://chriskempson.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#3B3228,fg:#d0c8c6,hl:#d28b71"\
" --color=bg+:#645240,fg+:#,hl+:#"\
" --color=info:#a89bb9,border:#a89bb9,prompt:#beb55b"\
" --color=pointer:#8ab3b5,marker:#,spinner:#,header:#cb6077"
