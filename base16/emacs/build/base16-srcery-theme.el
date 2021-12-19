;; base16-srcery-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/chriskempson/base16)

;;; Authors:
;; Scheme: 
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-srcery-colors
  '(:base00 "#1C1B19"
    :base01 "#98BC37"
    :base02 "#FED06E"
    :base03 "#918175"
    :base04 "#68A8E4"
    :base05 "#BAA67F"
    :base06 "#FF5C8F"
    :base07 "#FCE8C3"
    :base08 "#EF2F27"
    :base09 "#FF5F00"
    :base0A "#FBB829"
    :base0B "#519F50"
    :base0C "#0AAEB3"
    :base0D "#2C78BF"
    :base0E "#E02C6D"
    :base0F "#2BE4D0")
  "All colors for Base16 srcery are defined here.")

;; Define the theme
(deftheme base16-srcery)

;; Add all the faces to the theme
(base16-theme-define 'base16-srcery base16-srcery-colors)

;; Mark the theme as provided
(provide-theme 'base16-srcery)

(provide 'base16-srcery-theme)

;;; base16-srcery-theme.el ends here
