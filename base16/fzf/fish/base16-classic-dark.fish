# Scheme name: Classic Dark
# Scheme system: 
# Scheme author: Jason Heeris (http://heeris.id.au)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#151515,fg:#D0D0D0,hl:#D28445"\
" --color=bg+:#303030,fg+:#,hl+:#"\
" --color=info:#AA759F,border:#AA759F,prompt:#90A959"\
" --color=pointer:#6A9FB5,marker:#,spinner:#,header:#AC4142"
