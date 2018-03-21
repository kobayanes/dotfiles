;; ----------------------------------------------------------------------------
;; file    : 11-stash-tools.el
;; brief   : development tools configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2016/11/14
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : time-stamp configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'time-stamp)
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-active t)
(setq time-stamp-start " date    : ")
(setq time-stamp-format "%04y/%02m/%02d")
(setq time-stamp-end " \\|$")


;; ----------------------------------------------------------------------------
;; brief   : recentf-ext configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(when (require 'recentf-ext nil t)
  (setq recentf-max-saved-items 1000)
  (setq recentf-exclude '("~/.emacs.d/cache/.recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))


;; ----------------------------------------------------------------------------
;; brief   : session configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(when (require 'session nil t)
  (setq session-initialize '(de-saveplace session keys menus places)
        session-globals-include '((kill-ring 50)
                                  (session-file-alist 500 t)
                                  (file-name-history 10000)))
(add-hook 'after-init-hook 'session-initialize)
(setq session-undo-check -1))


;; ----------------------------------------------------------------------------
;; brief   : undo-tree configuration
;; note    : -
;; ----------------------------------------------------------------------------
(require 'undo-tree)
(global-undo-tree-mode t)
; keybind
(global-set-key (kbd "M-/") 'undo-tree-redo)
