# Scheme name: Edge Light
# Scheme system: 
# Scheme author: cjayross (https://github.com/cjayross)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#fafafa,fg:#5e646f,hl:#db7070"\
" --color=bg+:#d69822,fg+:#,hl+:#"\
" --color=info:#b870ce,border:#b870ce,prompt:#7c9f4b"\
" --color=pointer:#6587bf,marker:#,spinner:#,header:#db7070"
