// Base16 Rigel
// Scheme: Alexander Keliris

var color_scheme = {
        'base00': '#00384d',
        'base01': '#9cf087',
        'base02': '#ffcc1b',
        'base03': '#517f8d',
        'base04': '#7eb2dd',
        'base05': '#77929e',
        'base06': '#fb94ff',
        'base07': '#e6e6dc',
        'base08': '#c43061',
        'base09': '#ff5a67',
        'base0A': '#f08e48',
        'base0B': '#7fc06e',
        'base0C': '#00cccc',
        'base0D': '#1c8db2',
        'base0E': '#c694ff',
        'base0F': '#00ffff',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(119, 146, 158, 0.5)");

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
                        color_scheme.base08,
                        color_scheme.base0B,
                        color_scheme.base0A,
                        color_scheme.base0D,
                        color_scheme.base0E,
                        color_scheme.base0C,
                        color_scheme.base07,
                        color_scheme.base09,
                        color_scheme.base0F,
                        color_scheme.base01,
                        color_scheme.base02,
                        color_scheme.base04,
                        color_scheme.base06]);
