(progn
  ;; Base16 Vice Alt
  ;; Author: Thomas Leon Highbaugh

  (stumpwm:set-fg-color "#afafd7")
  (stumpwm:set-bg-color "#303030")
  (stumpwm:set-border-color "#875faf")
  (stumpwm:set-focus-color "#afafd7")
  (stumpwm:set-unfocus-color "#303030")

  (setf stumpwm:*mode-line-foreground-color* "#d7afff"
	stumpwm:*mode-line-background-color* "#444444"
	stumpwm:*mode-line-border-color* "#875faf")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#303030"
	(car (last stumpwm:*colors*)) "#875faf")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
