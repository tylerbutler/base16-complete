# Scheme name: Windows 10
# Scheme system: 
# Scheme author: Fergus Collins (https://github.com/C-Fergus)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#0c0c0c,fg:#cccccc,hl:#c19c00"\
" --color=bg+:#535353,fg+:#,hl+:#"\
" --color=info:#b4009e,border:#b4009e,prompt:#16c60c"\
" --color=pointer:#3b78ff,marker:#,spinner:#,header:#e74856"
