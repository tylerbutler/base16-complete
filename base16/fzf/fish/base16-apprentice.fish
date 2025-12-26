# Scheme name: Apprentice
# Scheme system: 
# Scheme author: romainl
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#262626,fg:#5F5F87,hl:#FF8700"\
" --color=bg+:#5F875F,fg+:#,hl+:#"\
" --color=info:#5FAFAF,border:#5FAFAF,prompt:#FFFFAF"\
" --color=pointer:#8787AF,marker:#,spinner:#,header:#444444"
