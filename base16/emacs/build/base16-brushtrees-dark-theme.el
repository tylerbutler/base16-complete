;; base16-brushtrees-dark-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Abraham White &lt;abelincoln.white@gmail.com&gt;
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-brushtrees-dark-theme-colors
  '(:base00 "#485867"
    :base01 "#5A6D7A"
    :base02 "#6D828E"
    :base03 "#8299A1"
    :base04 "#98AFB5"
    :base05 "#B0C5C8"
    :base06 "#C9DBDC"
    :base07 "#E3EFEF"
    :base08 "#b38686"
    :base09 "#d8bba2"
    :base0A "#aab386"
    :base0B "#87b386"
    :base0C "#86b3b3"
    :base0D "#868cb3"
    :base0E "#b386b2"
    :base0F "#b39f9f")
  "All colors for Base16 Brush Trees Dark are defined here.")

;; Define the theme
(deftheme base16-brushtrees-dark)

;; Add all the faces to the theme
(base16-theme-define 'base16-brushtrees-dark base16-brushtrees-dark-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-brushtrees-dark)

(provide 'base16-brushtrees-dark-theme)

;;; base16-brushtrees-dark-theme.el ends here
