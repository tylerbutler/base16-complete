# Scheme name: srcery
# Scheme system: 
# Scheme author: 
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1C1B19,fg:#BAA67F,hl:#FF5F00"\
" --color=bg+:#FED06E,fg+:#,hl+:#"\
" --color=info:#E02C6D,border:#E02C6D,prompt:#519F50"\
" --color=pointer:#2C78BF,marker:#,spinner:#,header:#EF2F27"
