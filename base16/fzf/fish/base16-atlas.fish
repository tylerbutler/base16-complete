# Scheme name: Atlas
# Scheme system: 
# Scheme author: Alex Lende (https://ajlende.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#002635,fg:#a1a19a,hl:#f08e48"\
" --color=bg+:#517F8D,fg+:#,hl+:#"\
" --color=info:#9a70a4,border:#9a70a4,prompt:#7fc06e"\
" --color=pointer:#14747e,marker:#,spinner:#,header:#ff5a67"
