# Scheme name: 3024
# Scheme system: 
# Scheme author: Jan T. Sott (http://github.com/idleberg)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#090300,fg:#a5a2a2,hl:#e8bbd0"\
" --color=bg+:#4a4543,fg+:#,hl+:#"\
" --color=info:#a16a94,border:#a16a94,prompt:#01a252"\
" --color=pointer:#01a0e4,marker:#,spinner:#,header:#db2d20"
