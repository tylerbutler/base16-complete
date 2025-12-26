# Scheme name: darkmoss
# Scheme system: 
# Scheme author: Gabriel Avanzi (https://github.com/avanzzzi)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#171e1f,fg:#c7c7a5,hl:#e6db74"\
" --color=bg+:#373c3d,fg+:#,hl+:#"\
" --color=info:#9bc0c8,border:#9bc0c8,prompt:#499180"\
" --color=pointer:#498091,marker:#,spinner:#,header:#ff4658"
