# Scheme name: Brush Trees Dark
# Scheme system: 
# Scheme author: Abraham White &lt;abelincoln.white@gmail.com&gt;
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#485867,fg:#B0C5C8,hl:#d8bba2"\
" --color=bg+:#6D828E,fg+:#,hl+:#"\
" --color=info:#b386b2,border:#b386b2,prompt:#87b386"\
" --color=pointer:#868cb3,marker:#,spinner:#,header:#b38686"
