# Scheme name: Brewer
# Scheme system: 
# Scheme author: Timothée Poisot (http://github.com/tpoisot)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#0c0d0e,fg:#b7b8b9,hl:#e6550d"\
" --color=bg+:#515253,fg+:#,hl+:#"\
" --color=info:#756bb1,border:#756bb1,prompt:#31a354"\
" --color=pointer:#3182bd,marker:#,spinner:#,header:#e31a1c"
