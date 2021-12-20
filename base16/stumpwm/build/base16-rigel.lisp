(progn
  ;; Base16 Rigel
  ;; Author: Alexander Keliris

  (stumpwm:set-fg-color "#7eb2dd")
  (stumpwm:set-bg-color "#00384d")
  (stumpwm:set-border-color "#517f8d")
  (stumpwm:set-focus-color "#7eb2dd")
  (stumpwm:set-unfocus-color "#00384d")

  (setf stumpwm:*mode-line-foreground-color* "#c694ff"
	stumpwm:*mode-line-background-color* "#9cf087"
	stumpwm:*mode-line-border-color* "#517f8d")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#00384d"
	(car (last stumpwm:*colors*)) "#517f8d")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
