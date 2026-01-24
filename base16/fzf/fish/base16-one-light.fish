# Scheme name: One Light
# Scheme system: 
# Scheme author: Daniel Pfeifer (http://github.com/purpleKarrot)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#fafafa,fg:#383a42,hl:#d75f00"\
" --color=bg+:#e5e5e6,fg+:#,hl+:#"\
" --color=info:#a626a4,border:#a626a4,prompt:#50a14f"\
" --color=pointer:#4078f2,marker:#,spinner:#,header:#ca1243"
