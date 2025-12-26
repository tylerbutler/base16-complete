# Scheme name: Atelier Savanna
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
" --color=bg:#171c19,fg:#87928a,hl:#9f713c"\
" --color=bg+:#526057,fg+:#,hl+:#"\
" --color=info:#55859b,border:#55859b,prompt:#489963"\
" --color=pointer:#478c90,marker:#,spinner:#,header:#b16139"
