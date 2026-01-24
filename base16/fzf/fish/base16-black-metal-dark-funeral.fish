# Scheme name: Black Metal (Dark Funeral)
# Scheme system: 
# Scheme author: metalelf0 (https://github.com/metalelf0)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#c1c1c1,hl:#aaaaaa"\
" --color=bg+:#222222,fg+:#,hl+:#"\
" --color=info:#999999,border:#999999,prompt:#d0dfee"\
" --color=pointer:#888888,marker:#,spinner:#,header:#5f8787"
