(progn
  ;; Base16 srcery
  ;; Author: 

  (stumpwm:set-fg-color "#68A8E4")
  (stumpwm:set-bg-color "#1C1B19")
  (stumpwm:set-border-color "#918175")
  (stumpwm:set-focus-color "#68A8E4")
  (stumpwm:set-unfocus-color "#1C1B19")

  (setf stumpwm:*mode-line-foreground-color* "#E02C6D"
	stumpwm:*mode-line-background-color* "#98BC37"
	stumpwm:*mode-line-border-color* "#918175")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#1C1B19"
	(car (last stumpwm:*colors*)) "#918175")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
