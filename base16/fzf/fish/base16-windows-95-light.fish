# Scheme name: Windows 95 Light
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
" --color=bg:#fcfcfc,fg:#545454,hl:#fcfc54"\
" --color=bg+:#c4c4c4,fg+:#,hl+:#"\
" --color=info:#a800a8,border:#a800a8,prompt:#00a800"\
" --color=pointer:#0000a8,marker:#,spinner:#,header:#a80000"
