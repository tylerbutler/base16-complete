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
" --color=bg:#FDF0ED,fg:#403C3D,hl:#F9CEC3"\
" --color=bg+:#F9CBBE,fg+:#,hl+:#"\
" --color=info:#EE64AC,border:#EE64AC,prompt:#29D398"\
" --color=pointer:#26BBD9,marker:#,spinner:#,header:#E95678"
