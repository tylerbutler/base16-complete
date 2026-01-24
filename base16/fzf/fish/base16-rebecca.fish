# Scheme name: Rebecca
# Scheme system: 
# Scheme author: Victor Borja (http://github.com/vic) based on Rebecca Theme (http://github.com/vic/rebecca-theme)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#292a44,fg:#f1eff8,hl:#efe4a1"\
" --color=bg+:#383a62,fg+:#,hl+:#"\
" --color=info:#7aa5ff,border:#7aa5ff,prompt:#6dfedf"\
" --color=pointer:#2de0a7,marker:#,spinner:#,header:#a0a0c5"
