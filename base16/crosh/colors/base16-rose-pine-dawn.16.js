// Base16 Rosé Pine Dawn
// Scheme: Emilia Dunfelt &lt;edun@dunfelt.se&gt;

var color_scheme = {
        'base00': '#faf4ed',
        'base01': '#fffaf3',
        'base02': '#f2e9de',
        'base03': '#9893a5',
        'base04': '#797593',
        'base05': '#575279',
        'base06': '#575279',
        'base07': '#cecacd',
        'base08': '#b4637a',
        'base09': '#ea9d34',
        'base0A': '#d7827e',
        'base0B': '#286983',
        'base0C': '#56949f',
        'base0D': '#907aa9',
        'base0E': '#ea9d34',
        'base0F': '#cecacd',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(87, 82, 121, 0.5)");

term_.prefs_.set('color-palette-overrides',
                        [color_scheme.base00,
                        color_scheme.base08,
                        color_scheme.base0B,
                        color_scheme.base0A,
                        color_scheme.base0D,
                        color_scheme.base0E,
                        color_scheme.base0C,
                        color_scheme.base05,
                        color_scheme.base03,
                        color_scheme.base09,
                        color_scheme.base01,
                        color_scheme.base02,
                        color_scheme.base04,
                        color_scheme.base06,
                        color_scheme.base0F,
                        color_scheme.base07]);
