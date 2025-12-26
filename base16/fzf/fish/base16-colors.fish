# Scheme name: Colors
# Scheme system: 
# Scheme author: mrmrs (http://clrs.cc)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#111111,fg:#bbbbbb,hl:#ff851b"\
" --color=bg+:#555555,fg+:#,hl+:#"\
" --color=info:#b10dc9,border:#b10dc9,prompt:#2ecc40"\
" --color=pointer:#0074d9,marker:#,spinner:#,header:#ff4136"
