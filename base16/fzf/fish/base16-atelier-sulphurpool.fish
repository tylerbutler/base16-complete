# Scheme name: Atelier Sulphurpool
# Scheme system: 
# Scheme author: Bram de Haan (http://atelierbramdehaan.nl)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#202746,fg:#979db4,hl:#c76b29"\
" --color=bg+:#5e6687,fg+:#,hl+:#"\
" --color=info:#6679cc,border:#6679cc,prompt:#ac9739"\
" --color=pointer:#3d8fd1,marker:#,spinner:#,header:#c94922"
