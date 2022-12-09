;; base16-vice-alt-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Thomas Leon Highbaugh
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-vice-alt-theme-colors
  '(:base00 "#1b1d24"
    :base01 "#282b36"
    :base02 "#2f303d"
    :base03 "#323643"
    :base04 "#3f4859"
    :base05 "#555e70"
    :base06 "#b2bfd9"
    :base07 "#f4f4f7"
    :base08 "#ff3d81"
    :base09 "#F67544"
    :base0A "#ffff73"
    :base0B "#44ffdd"
    :base0C "#00caff"
    :base0D "#2fb1d4"
    :base0E "#8265ff"
    :base0F "#ff00aa")
  "All colors for Base16 Vice Alt are defined here.")

;; Define the theme
(deftheme base16-vice-alt)

;; Add all the faces to the theme
(base16-theme-define 'base16-vice-alt base16-vice-alt-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-vice-alt)

(provide 'base16-vice-alt-theme)

;;; base16-vice-alt-theme.el ends here
