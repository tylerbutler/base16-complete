# Scheme name: Paraiso
# Scheme system: 
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2f1e2e,fg:#a39e9b,hl:#f99b15"\
" --color=bg+:#4f424c,fg+:#,hl+:#"\
" --color=info:#815ba4,border:#815ba4,prompt:#48b685"\
" --color=pointer:#06b6ef,marker:#,spinner:#,header:#ef6155"
