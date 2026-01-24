;; base16-vice-alt-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Thomas Leon Highbaugh
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-vice-alt-theme-colors
  '(:base00 "#303030"
    :base01 "#444444"
    :base02 "#878787"
    :base03 "#875faf"
    :base04 "#afafd7"
    :base05 "#d7afff"
    :base06 "#ffffff"
    :base07 "#afffd7"
    :base08 "#ff005f"
    :base09 "#ff00ff"
    :base0A "#ffffaf"
    :base0B "#87ffff"
    :base0C "#00ffaf"
    :base0D "#afffff"
    :base0E "#d7afff"
    :base0F "#ff87d7")
  "All colors for Base16 Vice Alt are defined here.")

;; Define the theme
(deftheme base16-vice-alt)

;; Add all the faces to the theme
(base16-theme-define 'base16-vice-alt base16-vice-alt-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-vice-alt)

(provide 'base16-vice-alt-theme)

;;; base16-vice-alt-theme.el ends here
