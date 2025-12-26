# Scheme name: Equilibrium Gray Light
# Scheme system: 
# Scheme author: Carlo Abelli
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f1f1f1,fg:#474747,hl:#bf3e05"\
" --color=bg+:#d4d4d4,fg+:#,hl+:#"\
" --color=info:#4e66b6,border:#4e66b6,prompt:#637200"\
" --color=pointer:#0073b5,marker:#,spinner:#,header:#d02023"
