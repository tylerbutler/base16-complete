# Scheme name: Embers
# Scheme system: 
# Scheme author: Jannik Siebert (https://github.com/janniks)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#16130F,fg:#A39A90,hl:#828257"\
" --color=bg+:#433B32,fg+:#,hl+:#"\
" --color=info:#82576D,border:#82576D,prompt:#57826D"\
" --color=pointer:#6D5782,marker:#,spinner:#,header:#826D57"
