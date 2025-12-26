# Scheme name: Kimber
# Scheme system: 
# Scheme author: Mishka Nguyen (https://github.com/akhsiM)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#222222,fg:#DEDEE7,hl:#476C88"\
" --color=bg+:#555D55,fg+:#,hl+:#"\
" --color=info:#86CACD,border:#86CACD,prompt:#99C899"\
" --color=pointer:#537C9C,marker:#,spinner:#,header:#C88C8C"
