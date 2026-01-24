# Scheme name: Isotope
# Scheme system: 
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#d0d0d0,hl:#ff9900"\
" --color=bg+:#606060,fg+:#,hl+:#"\
" --color=info:#cc00ff,border:#cc00ff,prompt:#33ff00"\
" --color=pointer:#0066ff,marker:#,spinner:#,header:#ff0000"
