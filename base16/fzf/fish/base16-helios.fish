# Scheme name: Helios
# Scheme system: 
# Scheme author: Alex Meyer (https://github.com/reyemxela)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1d2021,fg:#d5d5d5,hl:#eb8413"\
" --color=bg+:#53585b,fg+:#,hl+:#"\
" --color=info:#be4264,border:#be4264,prompt:#88b92d"\
" --color=pointer:#1e8bac,marker:#,spinner:#,header:#d72638"
