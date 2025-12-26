# Scheme name: Nord
# Scheme system: 
# Scheme author: arcticicestudio
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2E3440,fg:#E5E9F0,hl:#D08770"\
" --color=bg+:#434C5E,fg+:#,hl+:#"\
" --color=info:#B48EAD,border:#B48EAD,prompt:#A3BE8C"\
" --color=pointer:#81A1C1,marker:#,spinner:#,header:#BF616A"
