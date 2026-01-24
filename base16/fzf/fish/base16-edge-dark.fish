# Scheme name: Edge Dark
# Scheme system: 
# Scheme author: cjayross (https://github.com/cjayross)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#262729,fg:#b7bec9,hl:#e77171"\
" --color=bg+:#b7bec9,fg+:#,hl+:#"\
" --color=info:#d390e7,border:#d390e7,prompt:#a1bf78"\
" --color=pointer:#73b3e7,marker:#,spinner:#,header:#e77171"
