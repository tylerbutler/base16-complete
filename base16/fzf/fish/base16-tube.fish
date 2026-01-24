# Scheme name: London Tube
# Scheme system: 
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#231f20,fg:#d9d8d8,hl:#f386a1"\
" --color=bg+:#5a5758,fg+:#,hl+:#"\
" --color=info:#98005d,border:#98005d,prompt:#00853e"\
" --color=pointer:#009ddc,marker:#,spinner:#,header:#ee2e24"
