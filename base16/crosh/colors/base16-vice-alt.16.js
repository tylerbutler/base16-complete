// Base16 Vice Alt
// Scheme: Thomas Leon Highbaugh

var color_scheme = {
        'base00': '#303030',
        'base01': '#444444',
        'base02': '#878787',
        'base03': '#875faf',
        'base04': '#afafd7',
        'base05': '#d7afff',
        'base06': '#ffffff',
        'base07': '#afffd7',
        'base08': '#ff005f',
        'base09': '#ff00ff',
        'base0A': '#ffffaf',
        'base0B': '#87ffff',
        'base0C': '#00ffaf',
        'base0D': '#afffff',
        'base0E': '#d7afff',
        'base0F': '#ff87d7',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(215, 175, 255, 0.5)");

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
