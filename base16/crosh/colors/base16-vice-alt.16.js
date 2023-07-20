// Base16 Vice Alt
// Scheme: Thomas Leon Highbaugh

var color_scheme = {
        'base00': '#1c1c1c',
        'base01': '#282828',
        'base02': '#2c2c2c',
        'base03': '#323232',
        'base04': '#3c3c3c',
        'base05': '#555555',
        'base06': '#b6b6b6',
        'base07': '#d1d1d1',
        'base08': '#ff3d81',
        'base09': '#F67544',
        'base0A': '#ffff73',
        'base0B': '#44ffdd',
        'base0C': '#00caff',
        'base0D': '#2fb1d4',
        'base0E': '#8265ff',
        'base0F': '#F83D80',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(85, 85, 85, 0.5)");

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
