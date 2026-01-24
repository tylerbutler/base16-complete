# Scheme name: Snazzy
# Scheme system: 
# Scheme author: Chawye Hsu (https://github.com/chawyehsu) based on Hyper Snazzy Theme (https://github.com/sindresorhus/hyper-snazzy)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282a36,fg:#e2e4e5,hl:#ff9f43"\
" --color=bg+:#43454f,fg+:#,hl+:#"\
" --color=info:#ff6ac1,border:#ff6ac1,prompt:#5af78e"\
" --color=pointer:#57c7ff,marker:#,spinner:#,header:#ff5c57"
