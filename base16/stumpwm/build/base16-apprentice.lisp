(progn
  ;; Base16 Apprentice
  ;; Author: romainl

  (stumpwm:set-fg-color "#5F87AF")
  (stumpwm:set-bg-color "#262626")
  (stumpwm:set-border-color "#87875F")
  (stumpwm:set-focus-color "#5F87AF")
  (stumpwm:set-unfocus-color "#262626")

  (setf stumpwm:*mode-line-foreground-color* "#5FAFAF"
	stumpwm:*mode-line-background-color* "#AF5F5F"
	stumpwm:*mode-line-border-color* "#87875F")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#262626"
	(car (last stumpwm:*colors*)) "#87875F")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
