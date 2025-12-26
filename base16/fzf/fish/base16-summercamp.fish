# Scheme name: summercamp
# Scheme system: 
# Scheme author: zoe firi (zoefiri.github.io)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1c1810,fg:#736e55,hl:#fba11b"\
" --color=bg+:#3a3527,fg+:#,hl+:#"\
" --color=info:#FF8080,border:#FF8080,prompt:#5ceb5a"\
" --color=pointer:#489bf0,marker:#,spinner:#,header:#e35142"
