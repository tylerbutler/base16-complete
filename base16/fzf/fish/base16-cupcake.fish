# Scheme name: Cupcake
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
" --color=bg:#fbf1f2,fg:#8b8198,hl:#EBB790"\
" --color=bg+:#d8d5dd,fg+:#,hl+:#"\
" --color=info:#BB99B4,border:#BB99B4,prompt:#A3B367"\
" --color=pointer:#7297B9,marker:#,spinner:#,header:#D57E85"
