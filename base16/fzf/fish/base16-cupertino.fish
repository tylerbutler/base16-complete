# Scheme name: Cupertino
# Scheme system: 
# Scheme author: Defman21
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#ffffff,fg:#404040,hl:#eb8500"\
" --color=bg+:#c0c0c0,fg+:#,hl+:#"\
" --color=info:#a90d91,border:#a90d91,prompt:#007400"\
" --color=pointer:#0000ff,marker:#,spinner:#,header:#c41a15"
