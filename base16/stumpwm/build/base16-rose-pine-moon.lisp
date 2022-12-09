(progn
  ;; Base16 Rosé Pine Moon
  ;; Author: Emilia Dunfelt &lt;edun@dunfelt.se&gt;

  (stumpwm:set-fg-color "#908caa")
  (stumpwm:set-bg-color "#232136")
  (stumpwm:set-border-color "#6e6a86")
  (stumpwm:set-focus-color "#908caa")
  (stumpwm:set-unfocus-color "#232136")

  (setf stumpwm:*mode-line-foreground-color* "#f6c177"
	stumpwm:*mode-line-background-color* "#2a273f"
	stumpwm:*mode-line-border-color* "#6e6a86")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#232136"
	(car (last stumpwm:*colors*)) "#6e6a86")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
