# Scheme name: Decaf
# Scheme system: 
# Scheme author: Alex Mirrington (https://github.com/alexmirrington)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2d2d2d,fg:#cccccc,hl:#ffbf70"\
" --color=bg+:#515151,fg+:#,hl+:#"\
" --color=info:#efb3f7,border:#efb3f7,prompt:#beda78"\
" --color=pointer:#90bee1,marker:#,spinner:#,header:#ff7f7b"
