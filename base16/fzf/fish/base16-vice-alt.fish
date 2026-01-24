# Scheme name: Vice Alt
# Scheme system: 
# Scheme author: Thomas Leon Highbaugh
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#303030,fg:#d7afff,hl:#ff00ff"\
" --color=bg+:#878787,fg+:#,hl+:#"\
" --color=info:#d7afff,border:#d7afff,prompt:#87ffff"\
" --color=pointer:#afffff,marker:#,spinner:#,header:#ff005f"
