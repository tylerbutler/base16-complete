// Base16 Vice Alt
// Scheme: Thomas Leon Highbaugh

var color_scheme = {
        'base00': '#1b1d24',
        'base01': '#282b36',
        'base02': '#2f303d',
        'base03': '#323643',
        'base04': '#3f4859',
        'base05': '#555e70',
        'base06': '#b2bfd9',
        'base07': '#f4f4f7',
        'base08': '#ff3d81',
        'base09': '#F67544',
        'base0A': '#ffff73',
        'base0B': '#44ffdd',
        'base0C': '#00caff',
        'base0D': '#2fb1d4',
        'base0E': '#8265ff',
        'base0F': '#ff00aa',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(85, 94, 112, 0.5)");

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
