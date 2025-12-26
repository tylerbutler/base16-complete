# Scheme name: Circus
# Scheme system: 
# Scheme author: Stephan Boyer (https://github.com/stepchowfun) and Esther Wang (https://github.com/ewang12)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#191919,fg:#a7a7a7,hl:#4bb1a7"\
" --color=bg+:#303030,fg+:#,hl+:#"\
" --color=info:#b888e2,border:#b888e2,prompt:#84b97c"\
" --color=pointer:#639ee4,marker:#,spinner:#,header:#dc657d"
