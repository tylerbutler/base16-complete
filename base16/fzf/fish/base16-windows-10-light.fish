# Scheme name: Windows 10 Light
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
" --color=bg:#f2f2f2,fg:#767676,hl:#f9f1a5"\
" --color=bg+:#d9d9d9,fg+:#,hl+:#"\
" --color=info:#881798,border:#881798,prompt:#13a10e"\
" --color=pointer:#0037da,marker:#,spinner:#,header:#c50f1f"
