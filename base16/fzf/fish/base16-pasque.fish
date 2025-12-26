# Scheme name: Pasque
# Scheme system: 
# Scheme author: Gabriel Fontes (https://github.com/Misterio77)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#271C3A,fg:#DEDCDF,hl:#918889"\
" --color=bg+:#3E2D5C,fg+:#,hl+:#"\
" --color=info:#953B9D,border:#953B9D,prompt:#C6914B"\
" --color=pointer:#8E7DC6,marker:#,spinner:#,header:#A92258"
