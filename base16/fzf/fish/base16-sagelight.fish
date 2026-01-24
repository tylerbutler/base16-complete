# Scheme name: Sagelight
# Scheme system: 
# Scheme author: Carter Veldhuizen
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f8f8f8,fg:#383838,hl:#ffaa61"\
" --color=bg+:#d8d8d8,fg+:#,hl+:#"\
" --color=info:#c8a0d2,border:#c8a0d2,prompt:#a0d2c8"\
" --color=pointer:#a0a7d2,marker:#,spinner:#,header:#fa8480"
