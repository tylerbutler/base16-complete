# Scheme name: Icy Dark
# Scheme system: 
# Scheme author: icyphox (https://icyphox.ga)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#021012,fg:#095b67,hl:#b3ebf2"\
" --color=bg+:#041f23,fg+:#,hl+:#"\
" --color=info:#00acc1,border:#00acc1,prompt:#4dd0e1"\
" --color=pointer:#00bcd4,marker:#,spinner:#,header:#16c1d9"
