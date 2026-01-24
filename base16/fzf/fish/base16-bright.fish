# Scheme name: Bright
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
" --color=bg:#000000,fg:#e0e0e0,hl:#fc6d24"\
" --color=bg+:#505050,fg+:#,hl+:#"\
" --color=info:#d381c3,border:#d381c3,prompt:#a1c659"\
" --color=pointer:#6fb3d2,marker:#,spinner:#,header:#fb0120"
