;; ----------------------------------------------------------------------------
;; file    : 01-keybinds.el
;; brief   : keybinds configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2018/01/27
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : buffer edit keybinds.
;; note    : -
;; ----------------------------------------------------------------------------
; set backspace key
(keyboard-translate ?\C-h ?\C-?)

; flame control
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t C-t") 'other-window)
(global-set-key "\C-tv" 'split-window-below)
(global-set-key "\C-th" 'split-window-right)
(global-set-key "\C-tb" 'windmove-left)
(global-set-key "\C-tn" 'windmove-down)
(global-set-key "\C-tp" 'windmove-up)
(global-set-key "\C-tf" 'windmove-right)
(global-set-key "\C-td" 'delete-window)

(global-set-key (kbd "M-i") 'indent-region)
(global-set-key (kbd "C-x C-t") 'shell-command)
(global-set-key (kbd "C-r") 'anzu-query-replace-at-cursor-thing)
(global-set-key (kbd "C-x g") 'magit-status)

;; ----------------------------------------------------------------------------
;; brief   : helm keybinds.
;; note    : -
;; ----------------------------------------------------------------------------
(global-set-key (kbd "C-;") 'helm-mini)
(global-set-key (kbd "C-x ;") 'helm-projectile)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-s") 'helm-ag-this-file)
(global-set-key (kbd "C-,") 'helm-descbinds)
(global-set-key (kbd "M-;") 'helm-flycheck)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'helm-resume)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
