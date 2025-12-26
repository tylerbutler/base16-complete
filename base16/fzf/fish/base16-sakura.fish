# Scheme name: Sakura
# Scheme system: 
# Scheme author: Misterio77 (http://github.com/Misterio77)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#feedf3,fg:#564448,hl:#f6661e"\
" --color=bg+:#e0ccd1,fg+:#,hl+:#"\
" --color=info:#5e2180,border:#5e2180,prompt:#2e916d"\
" --color=pointer:#006e93,marker:#,spinner:#,header:#df2d52"
