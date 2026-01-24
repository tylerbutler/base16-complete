# Scheme name: Atelier Forest Light
# Scheme system: 
# Scheme author: Bram de Haan (http://atelierbramdehaan.nl)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f1efee,fg:#68615e,hl:#df5320"\
" --color=bg+:#a8a19f,fg+:#,hl+:#"\
" --color=info:#6666ea,border:#6666ea,prompt:#7b9726"\
" --color=pointer:#407ee7,marker:#,spinner:#,header:#f22c40"
