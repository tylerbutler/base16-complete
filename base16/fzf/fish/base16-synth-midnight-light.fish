# Scheme name: Synth Midnight Terminal Light
# Scheme system: 
# Scheme author: Michaël Ball (http://github.com/michael-ball/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#dddfe0,fg:#28292a,hl:#ea770d"\
" --color=bg+:#c1c3c4,fg+:#,hl+:#"\
" --color=info:#ea5ce2,border:#ea5ce2,prompt:#06ea61"\
" --color=pointer:#03aeff,marker:#,spinner:#,header:#b53b50"
