# Scheme name: Shapeshifter
# Scheme system: 
# Scheme author: Tyler Benziger (http://tybenz.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f9f9f9,fg:#102015,hl:#e09448"\
" --color=bg+:#ababab,fg+:#,hl+:#"\
" --color=info:#f996e2,border:#f996e2,prompt:#0ed839"\
" --color=pointer:#3b48e3,marker:#,spinner:#,header:#e92f2f"
