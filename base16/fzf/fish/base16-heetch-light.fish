# Scheme name: Heetch Light
# Scheme system: 
# Scheme author: Geoffrey Teale (tealeg@gmail.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#feffff,fg:#5a496e,hl:#bdb6c5"\
" --color=bg+:#7b6d8b,fg+:#,hl+:#"\
" --color=info:#bd0152,border:#bd0152,prompt:#f80059"\
" --color=pointer:#47f9f5,marker:#,spinner:#,header:#27d9d5"
