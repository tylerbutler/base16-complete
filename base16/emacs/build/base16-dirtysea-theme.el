;; base16-dirtysea-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Kahlil (Kal) Hodgson
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-dirtysea-theme-colors
  '(:base00 "#e0e0e0"
    :base01 "#d0dad0"
    :base02 "#d0d0d0"
    :base03 "#707070"
    :base04 "#202020"
    :base05 "#000000"
    :base06 "#f8f8f8"
    :base07 "#c4d9c4"
    :base08 "#840000"
    :base09 "#006565"
    :base0A "#755B00"
    :base0B "#730073"
    :base0C "#755B00"
    :base0D "#007300"
    :base0E "#000090"
    :base0F "#755B00")
  "All colors for Base16 dirtysea are defined here.")

;; Define the theme
(deftheme base16-dirtysea)

;; Add all the faces to the theme
(base16-theme-define 'base16-dirtysea base16-dirtysea-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-dirtysea)

(provide 'base16-dirtysea-theme)

;;; base16-dirtysea-theme.el ends here
