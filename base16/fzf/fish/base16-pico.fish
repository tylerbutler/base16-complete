# Scheme name: Pico
# Scheme system: 
# Scheme author: PICO-8 (http://www.lexaloffle.com/pico-8.php)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#5f574f,hl:#ffa300"\
" --color=bg+:#7e2553,fg+:#,hl+:#"\
" --color=info:#ff77a8,border:#ff77a8,prompt:#00e756"\
" --color=pointer:#83769c,marker:#,spinner:#,header:#ff004d"
