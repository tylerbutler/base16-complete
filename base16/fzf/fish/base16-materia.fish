# Scheme name: Materia
# Scheme system: 
# Scheme author: Defman21
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#263238,fg:#CDD3DE,hl:#EA9560"\
" --color=bg+:#37474F,fg+:#,hl+:#"\
" --color=info:#82AAFF,border:#82AAFF,prompt:#8BD649"\
" --color=pointer:#89DDFF,marker:#,spinner:#,header:#EC5F67"
