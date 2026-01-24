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
" --color=bg:#1C1E26,fg:#CBCED0,hl:#FAB795"\
" --color=bg+:#2E303E,fg+:#,hl+:#"\
" --color=info:#EE64AC,border:#EE64AC,prompt:#29D398"\
" --color=pointer:#26BBD9,marker:#,spinner:#,header:#E95678"
