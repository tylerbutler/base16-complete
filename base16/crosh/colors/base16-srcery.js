// Base16 srcery
// Scheme: 

var color_scheme = {
        'base00': '#1C1B19',
        'base01': '#98BC37',
        'base02': '#FED06E',
        'base03': '#918175',
        'base04': '#68A8E4',
        'base05': '#BAA67F',
        'base06': '#FF5C8F',
        'base07': '#FCE8C3',
        'base08': '#EF2F27',
        'base09': '#FF5F00',
        'base0A': '#FBB829',
        'base0B': '#519F50',
        'base0C': '#0AAEB3',
        'base0D': '#2C78BF',
        'base0E': '#E02C6D',
        'base0F': '#2BE4D0',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(186, 166, 127, 0.5)");

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
