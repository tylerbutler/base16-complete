# Scheme name: Summerfruit Dark
# Scheme system: 
# Scheme author: Christopher Corley (http://christop.club/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#151515,fg:#D0D0D0,hl:#FD8900"\
" --color=bg+:#303030,fg+:#,hl+:#"\
" --color=info:#AD00A1,border:#AD00A1,prompt:#00C918"\
" --color=pointer:#3777E6,marker:#,spinner:#,header:#FF0086"
