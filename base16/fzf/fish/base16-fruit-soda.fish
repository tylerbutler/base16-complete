# Scheme name: Fruit Soda
# Scheme system: 
# Scheme author: jozip
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f1ecf1,fg:#515151,hl:#fe6d08"\
" --color=bg+:#d8d5d5,fg+:#,hl+:#"\
" --color=info:#611fce,border:#611fce,prompt:#47f74c"\
" --color=pointer:#2931df,marker:#,spinner:#,header:#fe3e31"
