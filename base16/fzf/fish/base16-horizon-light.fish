# Scheme name: Horizon Light
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
" --color=bg:#FDF0ED,fg:#403C3D,hl:#F6661E"\
" --color=bg+:#F9CBBE,fg+:#,hl+:#"\
" --color=info:#1D8991,border:#1D8991,prompt:#94E1B0"\
" --color=pointer:#DA103F,marker:#,spinner:#,header:#F7939B"
