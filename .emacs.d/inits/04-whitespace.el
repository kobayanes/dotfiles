;; ----------------------------------------------------------------------------
;; file    : 04-whitespace.el
;; brief   : whitespace configuration.
;; module  : .emacs.d
;;
;; author  : Teppei Kobayashi <kobayanes@gmail.com>
;; date    : 2016/11/13
;; ----------------------------------------------------------------------------


;; ----------------------------------------------------------------------------
;; brief   : general configuration.
;; note    : -
;; ----------------------------------------------------------------------------
(require 'whitespace)

(setq whitespace-style '(face
                         trailing
                         tabs
                         spaces
                         empty
                         space-mark
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(setq whitespace-space-regexp "\\(\u3000+\\)")  ; show full-width space
(setq whitespace-action '(auto-cleanup))        ; auto cleanup before save file
(global-whitespace-mode 1)                      ; enable whitespace-mode
