// Base16 Rosé Pine Moon
// Scheme: Emilia Dunfelt &lt;edun@dunfelt.se&gt;

var color_scheme = {
        'base00': '#232136',
        'base01': '#2a273f',
        'base02': '#393552',
        'base03': '#6e6a86',
        'base04': '#908caa',
        'base05': '#e0def4',
        'base06': '#e0def4',
        'base07': '#56526e',
        'base08': '#eb6f92',
        'base09': '#f6c177',
        'base0A': '#ea9a97',
        'base0B': '#3e8fb0',
        'base0C': '#9ccfd8',
        'base0D': '#c4a7e7',
        'base0E': '#f6c177',
        'base0F': '#56526e',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(224, 222, 244, 0.5)");

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
