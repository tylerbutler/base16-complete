# Scheme name: Horizon Dark
# Scheme system: 
# Scheme author: Michaël Ball (http://github.com/michael-ball/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1C1E26,fg:#CBCED0,hl:#E58D7D"\
" --color=bg+:#2E303E,fg+:#,hl+:#"\
" --color=info:#B072D1,border:#B072D1,prompt:#EFAF8E"\
" --color=pointer:#DF5273,marker:#,spinner:#,header:#E93C58"
