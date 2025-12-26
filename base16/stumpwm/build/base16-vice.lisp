(progn
  ;; Base16 Vice Dark
  ;; Author: Thomas Leon Highbaugh

  (stumpwm:set-fg-color "#666666")
  (stumpwm:set-bg-color "#181818")
  (stumpwm:set-border-color "#3f3f3f")
  (stumpwm:set-focus-color "#666666")
  (stumpwm:set-unfocus-color "#181818")

  (setf stumpwm:*mode-line-foreground-color* "#00f6d9"
	stumpwm:*mode-line-background-color* "#222222"
	stumpwm:*mode-line-border-color* "#3f3f3f")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#181818"
	(car (last stumpwm:*colors*)) "#3f3f3f")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
