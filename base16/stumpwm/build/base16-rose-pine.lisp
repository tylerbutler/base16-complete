(progn
  ;; Base16 Rosé Pine
  ;; Author: Emilia Dunfelt &lt;edun@dunfelt.se&gt;

  (stumpwm:set-fg-color "#908caa")
  (stumpwm:set-bg-color "#191724")
  (stumpwm:set-border-color "#6e6a86")
  (stumpwm:set-focus-color "#908caa")
  (stumpwm:set-unfocus-color "#191724")

  (setf stumpwm:*mode-line-foreground-color* "#f6c177"
	stumpwm:*mode-line-background-color* "#1f1d2e"
	stumpwm:*mode-line-border-color* "#6e6a86")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#191724"
	(car (last stumpwm:*colors*)) "#6e6a86")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
